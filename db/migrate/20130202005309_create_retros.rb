class CreateRetros < ActiveRecord::Migration
  def change
    create_table :retros do |t|
      t.string :state
      t.date :date
      t.boolean :voting_allowed

      t.timestamps
    end
  end
end
