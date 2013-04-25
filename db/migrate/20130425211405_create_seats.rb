class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :table_id
      t.integer :mood_id
      t.string :occupant

      t.timestamps
    end
  end
end
