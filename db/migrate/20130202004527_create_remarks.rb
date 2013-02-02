class CreateRemarks < ActiveRecord::Migration
  def change
    create_table :remarks do |t|
      t.string :title
      t.text :explanation
      t.boolean :postive

      t.timestamps
    end
  end
end
