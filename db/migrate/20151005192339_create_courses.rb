class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.references :mealtime, index: true, foreign_key: true
      t.references :photo
      t.timestamps null: false
    end
  end
end
