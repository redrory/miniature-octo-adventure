class Customer < ActiveRecord::Base
	attr_accessible :tour_date,  :email, :price, :tour_name, :tour_location
	validates :email, :presence => true

end
