class EventsController < ApplicationController
	rest_api :Event, :what, :what_more, :image, :when
end
