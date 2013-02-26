class CreateWws < ActiveRecord::Migration
  def change
    create_table :wws do |t|
      t.integer :number
      t.string :image
      t.text :disc
      t.integer :event_id

      t.timestamps
    end
  end
end
