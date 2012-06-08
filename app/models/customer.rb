class Customer < ActiveRecord::Base
	attr_accessible :tour_date,  :email, :price
	validates :email, :presence => true

end
