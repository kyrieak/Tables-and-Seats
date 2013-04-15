class RemoveStateFromRetros < ActiveRecord::Migration
  def up
    remove_column :retros, :state
  end

  def down
    add_column :retros, :state, :string
  end
end
