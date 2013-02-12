class AddTeamIdToRetros < ActiveRecord::Migration
  def change
    add_column :retros, :team_id, :integer
  end
end
