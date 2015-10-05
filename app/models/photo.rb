class Photo < ActiveRecord::Base
  has_many :courses
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" },
    default_url: "/images/:style/missing.png"

  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :picture, matches: [/png\Z/, /jpe?g\Z/]

end

