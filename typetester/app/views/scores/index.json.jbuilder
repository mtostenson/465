json.array!(@scores) do |score|
  json.extract! score, :id, :user, :score, :timestamp
  json.url score_url(score, format: :json)
end
