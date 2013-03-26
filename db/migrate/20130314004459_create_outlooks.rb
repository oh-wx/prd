class CreateOutlooks < ActiveRecord::Migration
  def change
    create_table :outlooks do |t|
      t.integer :event_id
      t.string :risk

      t.timestamps
    end
  end
end
