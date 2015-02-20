class UsersController < ApplicationController

  def welcome
    render :welcome
  end
  def subscribe
  	if request.xhr?
  		p params
  		Subscription.create(:email=> params[:email], :zipCode=>params[:zipCode])
  		 render json: {:status => 'done'}
  	end
  end
end