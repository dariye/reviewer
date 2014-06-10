class SessionsController < ApplicationController

  def create 
    # data from omniauth
    @auth = request.env["omniauth.auth"]
    #check if user is nyu student
    if @auth["info"]["email"] =~ /(nyu)/i
     @user = User.find_by_email(@auth["info"]["email"])
      if @user
        @user.refresh_token = @auth["credentials"]["refresh_token"]
        @user.save
      else
        @user = User.create!(email: @auth["info"]["email"], oauth_token: @auth["credentials"]["token"], refresh_token: @auth["credentials"]["refresh_token"])
      
      end
      
      session[:user_id] = @user.id
      sign_in @user
      redirect_back_or root_path
    else
      redirect_to root_url, :notice => "Sorry, only NYU students can review"

    end 
  end


  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
