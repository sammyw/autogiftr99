json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :name, :street_address, :suburb, :state, :postcode, :relationship, :user_id
  json.url recipient_url(recipient, format: :json)
end
