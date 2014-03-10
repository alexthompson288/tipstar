json.array!(@stars) do |star|
  json.extract! star, :id, :tipstar, :dog, :user_id, :item_id
  json.url star_url(star, format: :json)
end
