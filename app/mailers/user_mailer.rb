class UserMailer < ActionMailer::Base
  default from: "ebiz@chukkacaribbean.com"

  def request_email(customer)
  	@customer = customer
  	marketing_admin = "rwalker@chukkacaribbean.com"
  	mail(:to => marketing_admin, :subject => "#{customer.tour_name} | Request made")
  end

end
