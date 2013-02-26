class CreateRadars < ActiveRecord::Migration
  def change
    create_table :radars do |t|
      t.datetime :time
      t.string :image
      t.integer :event_id

      t.timestamps
    end
  end
end
