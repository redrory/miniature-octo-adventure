class Excursion < ActiveRecord::Base
	has_many :assignments
	has_many :locations, through: :assignments

	scope :mobay, where(area: "Montego Bay")
	scope :ochi, where(area: "Ocho Rios")
	scope :falmouth, where(area: "Falmouth")
	scope :active, where(tour_type: "Active Adventure")
	scope :culture, where(tour_type: "Cultural & Leisure")
end
