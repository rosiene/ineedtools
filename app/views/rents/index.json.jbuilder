json.array!(@rents) do |rent|
  json.extract! rent, :id, :user_id, :offer_id, :initial_date, :final_date
  json.url rent_url(rent, format: :json)
end
