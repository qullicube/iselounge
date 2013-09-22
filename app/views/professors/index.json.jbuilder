json.array!(@professors) do |professor|
  json.extract! professor, 
  json.url professor_url(professor, format: :json)
end
