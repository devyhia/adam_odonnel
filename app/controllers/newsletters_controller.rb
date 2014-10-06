class NewslettersController < ApplicationController
	rest_api :Newsletter, :name, :email, :birthdate, :zip, :country, :has_mortgage_news, :has_interest_rate_updates, :has_special_events
end
