json.array!(@levels) do |level|
  json.extract! level, :id, :title, :content
  json.url level_url(level, format: :json)
end
