json.array!(@ratings) do |rating|
  json.extract! rating, 
  json.url rating_url(rating, format: :json)
end
