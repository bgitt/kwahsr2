json.array!(@teachings) do |teaching|
  json.extract! teaching, :id, :term
  json.url teaching_url(teaching, format: :json)
end
