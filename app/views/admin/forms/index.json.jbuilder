json.array!(@admin_forms) do |admin_form|
  json.extract! admin_form, :id, :title, :content, :link
  json.url admin_form_url(admin_form, format: :json)
end
