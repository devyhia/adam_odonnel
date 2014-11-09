json.array!(@admin_realtors) do |admin_realtor|
  json.extract! admin_realtor, :id, :image, :title, :more, :url
  json.url admin_realtor_url(admin_realtor, format: :json)
end
