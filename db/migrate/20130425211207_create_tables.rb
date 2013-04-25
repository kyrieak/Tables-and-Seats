class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :party

      t.timestamps
    end
  end
end
