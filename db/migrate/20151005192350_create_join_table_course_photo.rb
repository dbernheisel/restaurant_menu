class CreateJoinTableCoursePhoto < ActiveRecord::Migration
  def change
    create_join_table :courses, :photos
  end
end
