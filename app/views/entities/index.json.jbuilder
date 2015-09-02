json.array!(@entities) do |entity|
  json.extract! entity, :id, :classification, :name, :logo
  json.url entity_url(entity, format: :json)
end
