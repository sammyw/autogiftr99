json.array!(@occasions) do |occasion|
  json.extract! occasion, :id, :occasion_type, :date, :description, :message, :recipient_id
  json.url occasion_url(occasion, format: :json)
end
