class CreateWws < ActiveRecord::Migration
  def change
    create_table :wws do |t|
      t.string :number
      t.string :disc
      t.string :image
      t.integer :event_id

      t.timestamps
    end
  end
end
