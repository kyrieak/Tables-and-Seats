# This migration comes from ccd_mvp_engine (originally 20120613155003)
class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
  end
end
