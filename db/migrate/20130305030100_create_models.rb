class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.integer :event_id
      t.string :agency

      t.timestamps
    end
  end
end
