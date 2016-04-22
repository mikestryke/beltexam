class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/songs'
    else
      redirect_to :back
    end
  end
end

