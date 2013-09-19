json.array!(@users) do |user|
  json.extract! user, :name, :age, :avatar, :biography
  json.url user_url(user, format: :json)
end
