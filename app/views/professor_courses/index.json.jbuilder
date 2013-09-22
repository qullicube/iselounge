json.array!(@professor_courses) do |professor_course|
  json.extract! professor_course, 
  json.url professor_course_url(professor_course, format: :json)
end
