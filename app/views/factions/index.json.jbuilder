json.array!(@factions) do |faction|
  json.extract! faction, :id, :name, :type, :points, :color
  json.url faction_url(faction, format: :json)
end
