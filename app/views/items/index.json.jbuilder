json.array!(@items) do |item|
  json.extract! item, :id, :type, :name, :description, :link, :media, :tipstars
  json.url item_url(item, format: :json)
end
