class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :datetime
      t.text :description
      t.string :tags
      t.integer :user_id

      t.timestamps
    end
  end
end
