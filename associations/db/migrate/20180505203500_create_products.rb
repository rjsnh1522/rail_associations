class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :color
      t.datetime :purchase_date
      t.decimal :cost

      t.timestamps
    end
  end
end
