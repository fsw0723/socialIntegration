require 'twitter'

class WelcomeController < ApplicationController
  def index
    if session[:user_id]
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = 'kcK4sgEVaOkmpPogw5UwQ'
        config.consumer_secret     = 'lGGK1B8ON46V6t8Q27K5Dfkt6Pi5S2rE9kFdFnNofo'
        config.access_token        = '1672554398-m0VpYgcLfnrqz0CxdabdYMK8ow9TFlivT2pyL1f'
        config.access_token_secret = 'EgS3G7kkRPq4iBNEyzwJhSQAvTvesaWuuQWvsZOKmSs'
      end
      @home_tweets = client.user_timeline(User.find(session[:user_id]).screen_name)
    end
  end
end