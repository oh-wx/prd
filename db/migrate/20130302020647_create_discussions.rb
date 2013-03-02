class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :url
      t.integer :event_id

      t.timestamps
    end
  end
end
