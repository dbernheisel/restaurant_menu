class Course < ActiveRecord::Base
  belongs_to :mealtime
  belongs_to :course_photo
end
