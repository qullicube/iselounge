json.array!(@dummies) do |dummy|
  json.extract! dummy, :name, :foo
  json.url dummy_url(dummy, format: :json)
end
