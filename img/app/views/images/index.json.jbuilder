json.array!(@images) do |image|
  json.extract! image, :id, :filename, :priv, :user_id, :tag_id
  json.url image_url(image, format: :json)
end
