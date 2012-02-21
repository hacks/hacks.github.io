class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :details
      t.string :location
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
