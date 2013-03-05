class CreateMesos < ActiveRecord::Migration
  def change
    create_table :mesos do |t|
      t.integer :event_id
      t.string :number

      t.timestamps
    end
  end
end
