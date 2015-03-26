json.array!(@locations) do |location|
  json.extract! location, :id, :address, :city, :state, :zip, :phone, :equipment_alley_account
  json.url location_url(location, format: :json)
end
