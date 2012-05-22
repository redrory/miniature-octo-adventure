class CustomersController < ApplicationController
  def create
  	Customer.create params[:customer]
  	#edirect_to :back
  	#render :text => params.inspect
  end
end
