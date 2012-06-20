class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def request_email
  	marketing_admin = "rwalker@chukkacaribbean.com"
  	mail(:to => marketing_admin, :subject => "Tour Request made")
  end
  
end
