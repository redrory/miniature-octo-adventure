class CustomersController < ApplicationController
  def create
  	Customer.create params[:customer]
  	UserMailer.request_email.deliver
  	#eedirect_to :back
  	#render :text => params.inspect
  end
end
