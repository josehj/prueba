json.array!(@users) do |user|
  json.extract! user, :id, :name, :last_name, :email, :user_name, :password, :points
  json.url user_url(user, format: :json)
end
