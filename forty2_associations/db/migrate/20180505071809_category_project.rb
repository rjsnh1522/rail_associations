class CategoryProject < ActiveRecord::Migration
  def change
  	create_table :category_projects do |t|
      t.references :project, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
     end
  end
end
