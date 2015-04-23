json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :publisher, :details, :location
  json.url book_url(book, format: :json)
end
