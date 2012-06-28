class Location < ActiveRecord::Base
	has_many :assignments
	has_many :excursions, through: :assignments

	attr_accessible :name
end
