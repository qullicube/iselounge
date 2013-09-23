json.array!(@professors_courses) do |professors_course|
  json.extract! professors_course, 
  json.url professors_course_url(professors_course, format: :json)
end
