class CreateOutlooks < ActiveRecord::Migration
  def change
    create_table :outlooks do |t|
      t.time :time
      t.date :date
      t.text :disc
      t.string :torn
      t.string :wind
      t.string :hail
      t.integer :event_id

      t.timestamps
    end
  end
end
