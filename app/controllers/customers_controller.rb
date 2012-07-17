class CustomersController < ApplicationController
  def create
    
  	@customer = Customer.create params[:customer]
  	if @customer.save
  	UserMailer.request_email(@customer).deliver
  	#flash[:success] = ""
    #render :create
  	else
      redirect_to :back
      flash[:success] = "Please enter a valid email"
  	end
  	#render :text => params.inspect
  end
  	
end
