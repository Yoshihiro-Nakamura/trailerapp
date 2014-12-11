json.array!(@kanris) do |kanri|
  json.extract! kanri, :id
  json.url kanri_url(kanri, format: :json)
end
