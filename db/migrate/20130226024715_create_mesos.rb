class CreateMesos < ActiveRecord::Migration
  def change
    create_table :mesos do |t|
      t.integer :number
      t.string :image
      t.text :disc
      t.integer :event_id

      t.timestamps
    end
  end
end
