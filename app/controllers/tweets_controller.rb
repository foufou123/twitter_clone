class TweetsController < ApplicationController

  before_filter :authorize, only: [:create]

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
      redirect_to("/tweets")
    else
      flash[:alert] = "Invalid entries, please try again"
      render("new")
    end
  end

  def edit
  end

  def show
    @tweet = Tweet.find(params[:id])
    @tweet = Tweet.new
  end


private
  def tweet_params
    params.require(:tweet).permit(:status)
  end

end
