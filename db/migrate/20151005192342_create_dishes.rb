class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :price
      t.references :course, index: true, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end
