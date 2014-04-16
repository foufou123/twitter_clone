class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(:username => params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to("/tweets")
      flash[:notice] = "User succesfully logged in"
    else
      flash[:notice] = "Invalid log in"
      render("new")
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to("/tweets")
  end
end
