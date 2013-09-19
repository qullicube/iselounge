json.array!(@wikis) do |wiki|
  json.extract! wiki, 
  json.url wiki_url(wiki, format: :json)
end
