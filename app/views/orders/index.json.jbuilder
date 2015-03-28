json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :order_name, :order_price, :order_qty
  json.url order_url(order, format: :json)
end
