class Course < ActiveRecord::Base
  belongs_to :mealtime
  has_one :course_photo
end
