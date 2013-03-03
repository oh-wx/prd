class CreateRadars < ActiveRecord::Migration
  def change
    create_table :radars do |t|
      t.string :time
      t.string :image
      t.string :date
      t.string :area
      t.integer :event_id

      t.timestamps
    end
  end
end
