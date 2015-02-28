json.array!(@courses) do |course|
  json.extract! course, :id, :name, :code, :semester
  json.url course_url(course, format: :json)
end
