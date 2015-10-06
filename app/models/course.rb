class Course < ActiveRecord::Base
  belongs_to :mealtime
  belongs_to :photo
  has_many :dishes
  delegate :picture, :capion, to: :photo
  delegate :name, to: :mealtime, prefix: true
  validates :name, uniqueness: true

end
