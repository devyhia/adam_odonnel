class ApiController < ApplicationController
	def all_events
		render json: Event.all.json
	end

	def all_realtors
		render json: Realtor.all.json
	end

	def signup_newsletter
		listing = Newsletter.create(newsletter_params)
		render json: true
	end

	protected
	def newsletter_params
		params.require(:newsletter).permit(Newsletter.params)
	end
end
