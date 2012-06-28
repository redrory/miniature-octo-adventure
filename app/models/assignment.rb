class Assignment < ActiveRecord::Base
	belongs_to :excursion
	belongs_to :location
end
