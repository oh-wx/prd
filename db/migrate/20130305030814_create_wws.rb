class CreateWws < ActiveRecord::Migration
  def change
    create_table :wws do |t|
      t.integer :event_id
      t.string :number

      t.timestamps
    end
  end
end
