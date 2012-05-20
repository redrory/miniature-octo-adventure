class Excursion < ActiveRecord::Base

	scope :mobay, where(area: "Montego Bay")
end
