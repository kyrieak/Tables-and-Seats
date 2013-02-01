# This migration comes from ccd_mvp_engine (originally 20120613155025)
class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
  end
end
