require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    Tweet.new("shakira-shakira", "My hips don't lie, breh")
    Tweet.new("Josue_Bravo", "Coding is life #nerdcity #computer_are_my_best_friend")
    @tweets = Tweet.all
    erb :index 
  end

end
