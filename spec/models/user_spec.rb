require "spec_helper"

describe User do

  describe '#firstname' do
    it { should validate_presence_of(:firstname) }
  end

  describe '#lastname' do
    it { should validate_presence_of(:lastname) }
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
    it { should validate_uniqueness_of(:email) }
  end

  describe '#password' do
    it { should ensure_length_of(:password).is_at_least(6) }
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

  describe "mass assignment" do
    it { should allow_mass_assignment_of(:firstname) }
    it { should allow_mass_assignment_of(:lastname) }
    it { should allow_mass_assignment_of(:email) }
    it { should allow_mass_assignment_of(:password) }
    it { should allow_mass_assignment_of(:password_confirmation) }
    it { should allow_mass_assignment_of(:twitter) }
    it { should allow_mass_assignment_of(:github) }
  end

end