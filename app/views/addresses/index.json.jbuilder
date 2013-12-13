json.array!(@addresses) do |address|
  json.extract! address, :id, :zip_cd, :address, :name
  json.url address_url(address, format: :json)
end
