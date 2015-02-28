json.array!(@assets) do |asset|
  json.extract! asset, :id, :type, :posted, :description, :tags, :rating
  json.url asset_url(asset, format: :json)
end
