class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "remarks", "retros", :name => "remarks_retro_id_fk"
    add_foreign_key "retros", "teams", :name => "retros_team_id_fk"
    add_foreign_key "users", "teams", :name => "users_team_id_fk"
  end
end
