class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :password_digest
      t.string :email
      t.boolean :admin,         :default => false
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :github
      t.string :twitter

      t.timestamps
    end

    add_index :users, :email,   :unique => true
  end
end
