class CustomersController < ApplicationController
  def create
  	@customer = Customer.create params[:customer]
  	UserMailer.request_email(@customer).deliver
  	#eedirect_to :back
  	#render :text => params.inspect
  end

end
