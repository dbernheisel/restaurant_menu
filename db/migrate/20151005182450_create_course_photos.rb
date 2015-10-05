class CreateCoursePhotos < ActiveRecord::Migration
  def change
    create_table :course_photos do |t|
      t.references :photo, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
