class Newsletter < ActiveRecord::Base
	def self.params
		return [:name, :email, :birthdate, :zip, :country, :has_mortgage_news, :has_interest_rate_updates, :has_special_events]
	end

	json *params

	after_create {
		has_mortgage_news = true unless has_mortgage_news
		has_special_events = true unless has_special_events
		has_interest_rate_updates = true unless has_interest_rate_updates
	}
end