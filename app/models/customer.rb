class Customer < ActiveRecord::Base
	attr_accessible :tour_date,  :email, :price, :tour_name
	validates :email, :presence => true

end
