json.array!(@machines) do |machine|
  json.extract! machine, :id, :stock_number, :year, :machine_make, :machine_model, :machine_type, :serial, :hours, :price, :location, :description
  json.url machine_url(machine, format: :json)
end
