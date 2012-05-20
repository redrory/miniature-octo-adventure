class Excursion < ActiveRecord::Base

	scope :mobay, where(area: "Montego Bay")
	scope :ochi, where(area: "Ocho Rios")
end
