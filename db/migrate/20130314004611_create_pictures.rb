class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :event_id
      t.string :url

      t.timestamps
    end
  end
end
