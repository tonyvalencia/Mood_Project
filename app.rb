require 'bundler'
Bundler.require
require_relative 'lib/tumblr.rb'

class MyApp < Sinatra::Base
  get '/' do 
    erb :index
  end

  post '/' do 
    puts params.inspect
  	url = params[:site]
  	@blog = Blog.new(url)
  	# @mood = params[:value2] #we need to set this up
    if url == "gif-guy.tumblr.com"
      @mood = "Happy"
    elsif url == "graceinitiatessarcasm.tumblr.com"
      @mood = "Funny"
    end
      
  	erb :mood
  end

end 