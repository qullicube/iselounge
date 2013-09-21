json.array!(@make_comments) do |make_comment|
  json.extract! make_comment, 
  json.url make_comment_url(make_comment, format: :json)
end
