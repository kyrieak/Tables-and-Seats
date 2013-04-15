class RemoveTitleFromRemark < ActiveRecord::Migration
  def up
    remove_column :remarks, :title
  end

  def down
    add_column :remarks, :title, :string
  end
end
