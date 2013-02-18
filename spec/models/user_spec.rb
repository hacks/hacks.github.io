require "spec_helper"

describe User do

  describe '#name' do
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:name) }
  end

  describe '#email' do
    [
      'niceandsimple@example.com',
      'very.common@example.com',
      'a.little.lengthy.but.fine@dept.example.com',
      'disposable.style.email.with+symbol@example.com',
      '!#$%&\'*+-/=?^_`{}|~@example.org'
    ].each { |e| it { should allow_value(e).for(:email) } }

    [
      nil, '', ' ', ' '*20, 'a', 'foo.com', 'www.google.com', 'ba@me',
      'fo@od@as.com'
    ].each { |e| it { should_not allow_value(e).for(:email) } }
  end

  describe '#password' do
    [
      'nathan', 'bob-smith', 'kin13-fo-1', 'a'*128, '713&*@!^#hjsa>,`~'
    ].each { |e| it { should allow_value(e).for(:password) } }

    [
      '', ' ', 'a', 'sad', 'sfaw1', 'a'*129
    ].each { |e| it { should_not allow_value(e).for(:password) } }
  end

  describe '#github' do
    [
      'nathan', 'bob-smith', 'kin13-fo-1', 'oO-', 'a'*40
    ].each { |e| it { should allow_value(e).for(:github) } }

    [
      '-nope', '!name', '@name', '$name', '()', 'sda.sda', 'das_dsa', 'a'*41
    ].each { |e| it { should_not allow_value(e).for(:github) } }
  end

  describe '#twitter' do
    [
      'nathan', 'bob_smith', 'oO', 'a', 'a'*15
    ].each { |e| it { should allow_value(e).for(:twitter) } }

    [
      'user-name', '-nope', '!name', '@name', '$name', '()', 'sda.sda', 'a'*16
    ].each { |e| it { should_not allow_value(e).for(:twitter) } }
  end

end