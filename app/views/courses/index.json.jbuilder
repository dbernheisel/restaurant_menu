json.array!(@courses) do |course|
  json.extract! course, :id, :name, :mealtime_id, :course_photo_id
  json.url course_url(course, format: :json)
end
