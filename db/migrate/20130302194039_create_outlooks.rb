class CreateOutlooks < ActiveRecord::Migration
  def change
    create_table :outlooks do |t|
      t.string :init_time
      t.string :init_date
      t.string :day
      t.string :risk
      t.string :cat
      t.string :prob
      t.string :disc
      t.string :torn
      t.string :hail
      t.string :wind
      t.integer :event_id

      t.timestamps
    end
  end
end
