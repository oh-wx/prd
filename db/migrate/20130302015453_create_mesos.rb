class CreateMesos < ActiveRecord::Migration
  def change
    create_table :mesos do |t|
      t.string :number
      t.string :disc
      t.string :image
      t.integer :event_id

      t.timestamps
    end
  end
end
