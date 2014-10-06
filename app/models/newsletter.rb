class Newsletter < ActiveRecord::Base
	def self.params
		return [:name, :email, :birthdate, :zip, :country, :has_mortgage_news, :has_interest_rate_updates, :has_special_events]
	end

	json *params
end