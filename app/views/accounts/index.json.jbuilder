json.array!(@accounts) do |account|
  json.extract! account, :id, :customer_id, :acc_name, :acc_num, :branch
  json.url account_url(account, format: :json)
end
