class UsersController < ApplicationController

  def new
    @user = User.new
  end


  def index
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User successfully created"
      redirect_to("/users")
     else
      alert[:notice] = "Invalid entry"
      render("index.html.erb")
    end
  end

  def edit
  end

  def show
  end


  private
    def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
