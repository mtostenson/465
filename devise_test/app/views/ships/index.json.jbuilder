json.array!(@ships) do |ship|
  json.extract! ship, :id, :make, :model, :user_id
  json.url ship_url(ship, format: :json)
end
