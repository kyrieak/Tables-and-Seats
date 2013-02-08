class AddConnotationIdToRemark < ActiveRecord::Migration
  def change
    add_column :remarks, :connotation_id, :integer
  end
end
