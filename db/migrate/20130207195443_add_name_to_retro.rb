class AddNameToRetro < ActiveRecord::Migration
  def change
    add_column :retros, :name, :string
  end
end
