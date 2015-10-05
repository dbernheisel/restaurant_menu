json.array!(@mealtimes) do |mealtime|
  json.extract! mealtime, :id, :name
  json.url mealtime_url(mealtime, format: :json)
end
