class Customer < ActiveRecord::Base
	attr_accessible :tour_date, :email
	validates :email, :presence => true
end
