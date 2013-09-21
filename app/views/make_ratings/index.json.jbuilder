json.array!(@make_ratings) do |make_rating|
  json.extract! make_rating, 
  json.url make_rating_url(make_rating, format: :json)
end
