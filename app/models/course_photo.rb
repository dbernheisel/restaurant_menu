class CoursePhoto < ActiveRecord::Base
  belongs_to :photo
  belongs_to :course
end
