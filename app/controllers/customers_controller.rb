class CustomersController < ApplicationController
  def create
  	Customer.create params[:customer]
  	#eedirect_to :back
  	#render :text => params.inspect
  end
end
