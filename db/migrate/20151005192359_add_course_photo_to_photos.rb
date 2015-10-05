class AddCoursePhotoToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :course_photo, foreign_key: true
  end
end
