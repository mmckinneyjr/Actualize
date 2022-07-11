class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render :index
  end

  def show
    @tweet = Tweet.find_by(id: params["id"])
    render :show
  end

  def create
    @tweet = Tweet.new(
      tweet_text: params["tweet_text"],
    )
    @tweet.save
    render template: "tweets/show"
  end

  def update
    @tweet = Tweet.find_by(id: params["id"])

    @tweet.tweet_text = params["tweet_text"] || tweet.tweet_text

    @tweet.save
    render template: "tweets/show"
  end

  def destroy
    tweet = Tweet.find_by(id: params["id"])

    tweet.destroy
    render json: { message: "Tweet Successfully Deleted" }
  end
end
