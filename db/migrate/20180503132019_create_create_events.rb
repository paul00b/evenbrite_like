class CreateCreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :create_events do |t|
      t.integer :creator_id

      t.timestamps
    end
  end
end
