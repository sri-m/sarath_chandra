json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :cell, :email, :age, :address
  json.url customer_url(customer, format: :json)
end
