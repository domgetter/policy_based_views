json.array!(@users) do |user|
  json.extract! user, :id, :email, :entity_id
  json.url user_url(user, format: :json)
end
