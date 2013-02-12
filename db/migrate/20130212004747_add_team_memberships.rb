class AddTeamMemberships < ActiveRecord::Migration
  def up
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end
  end

  def down
    drop_table :memberships
  end
end
