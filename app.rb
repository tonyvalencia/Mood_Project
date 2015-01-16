require 'bundler'
Bundler.require
require_relative 'lib/tumblr.rb'

class MyApp < Sinatra::Base
  get '/' do 
    erb :index
  end

  post '/' do
  	url = params[:site]
  	@blog = Blog.new(url)
  	@mood = params[:mood] #we need to set this up
  	erb :mood
  end

end 