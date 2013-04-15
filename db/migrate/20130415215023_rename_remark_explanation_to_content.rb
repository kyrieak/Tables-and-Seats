class RenameRemarkExplanationToContent < ActiveRecord::Migration
  def up
    rename_column :remarks, :explanation, :content
  end

  def down
    rename_column :remarks, :content, :explanation
  end
end
