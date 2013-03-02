class CreateOutlooks < ActiveRecord::Migration
  def change
    create_table :outlooks do |t|
      t.string :date
      t.string :time
      t.string :disc
      t.string :torn
      t.string :hail
      t.string :wind
      t.integer :event_id

      t.timestamps
    end
  end
end
