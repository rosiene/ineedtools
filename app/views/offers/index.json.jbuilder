json.array!(@offers) do |offer|
  json.extract! offer, :id, :user_id, :name, :description, :price, :category_id, :status
  json.url offer_url(offer, format: :json)
end
