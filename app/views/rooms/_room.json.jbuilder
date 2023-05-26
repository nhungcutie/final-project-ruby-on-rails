json.extract! room, :id, :room_number, :hotel_id, :no_adult, :no_children, :price, :created_at, :updated_at
json.url room_url(room, format: :json)
