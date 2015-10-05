class AddCoursePhotoToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :course_photo, foreign_key: true
  end
end
