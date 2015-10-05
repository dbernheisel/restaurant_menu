json.array!(@course_photos) do |course_photo|
  json.extract! course_photo, :id, :photo_id, :course_id
  json.url course_photo_url(course_photo, format: :json)
end
