class Photo < ActiveRecord::Base
  has_many :courses
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" },
    default_url: "/images/:style/missing.png",
    storage: :s3,
    s3_credentials: {bucket: Rails.application.secrets.aws_bucket, access_key_id: Rails.application.secrets.aws_key_id, secret_access_key: Rails.application.secrets.aws_secret}

  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :picture, matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]


  private
    def destroy_picture
      self.picture.destroy
    end

end

