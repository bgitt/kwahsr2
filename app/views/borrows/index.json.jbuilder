json.array!(@borrows) do |borrow|
  json.extract! borrow, :id
  json.url borrow_url(borrow, format: :json)
end
