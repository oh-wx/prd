class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :hour
      t.integer :event_id

      t.timestamps
    end
  end
end
