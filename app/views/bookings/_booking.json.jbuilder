json.extract! booking, :id, :name, :email, :content, :created_at, :updated_at
json.url booking_url(booking, format: :json)
