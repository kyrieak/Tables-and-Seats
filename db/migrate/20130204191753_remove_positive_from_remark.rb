class RemovePositiveFromRemark < ActiveRecord::Migration
  def change
    remove_column :remarks, :positive
  end
end
