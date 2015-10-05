class CreateJoinTableCoursePhoto < ActiveRecord::Migration
  def change
    create_join_table :course, :photo
  end
end
