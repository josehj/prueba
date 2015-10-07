json.array!(@quests) do |quest|
  json.extract! quest, :id, :name, :points
  json.url quest_url(quest, format: :json)
end
