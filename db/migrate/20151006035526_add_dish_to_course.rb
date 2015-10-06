class AddDishToCourse < ActiveRecord::Migration
  def change
    add_reference :courses, :dish, index: true, foreign_key: true
  end
end
