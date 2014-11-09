json.array!(@admin_newsletters) do |admin_newsletter|
  json.extract! admin_newsletter, :id, :name, :email, :birthdate, :zip, :country, :has_mortgage_news, :has_interest_rate_updates, :has_special_events
  json.url admin_newsletter_url(admin_newsletter, format: :json)
end
