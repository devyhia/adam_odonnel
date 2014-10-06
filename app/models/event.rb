class Event < ActiveRecord::Base
	json :what, :what_more, :image, :when
end
