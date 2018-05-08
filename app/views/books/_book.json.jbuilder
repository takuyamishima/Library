json.extract! book, :id, :book_name, :created_at, :updated_at
json.url book_url(book, format: :json)
