class Customer < ActiveRecord::Base
	attr_accessible :tour_date,  :email, :price, :tour_name, :tour_location
 #validates :email, presence: true 
 email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, :format     => { :with => email_regex },
                    :presence => true,
                    :length => { :within => 5..50 }

end
