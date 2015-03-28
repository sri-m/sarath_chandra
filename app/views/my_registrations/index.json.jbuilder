json.array!(@my_registrations) do |my_registration|
  json.extract! my_registration, :id, :name, :email, :cell, :category, :gender, :subject
  json.url my_registration_url(my_registration, format: :json)
end
