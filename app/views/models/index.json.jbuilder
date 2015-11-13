json.array!(@models) do |model|
  json.extract! model, :id, :name, :make_name, :type_name
  json.url model_url(model, format: :json)
end
