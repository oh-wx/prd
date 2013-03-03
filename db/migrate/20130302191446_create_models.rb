class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :hour
      t.string :type
      t.string :init_time
      t.string :init_date
      t.integer :event_id

      t.timestamps
    end
  end
end
