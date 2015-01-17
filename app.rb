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
    @url_array = @blog.post_body
  	# @mood = params[:value2] #we need to set this up
    if url == "gif-guy.tumblr.com"
      @mood = "Funny"
    elsif url == "graceinitiatessarcasm.tumblr.com"
      @mood = "Happy"
    elsif url == "longhornsbec.tumblr.com"
      @mood = "Discouraged"
    elsif url == "beyonce.tumblr.com"
      @mood = "Beyonce"
    elsif url == "yourreactiongifs.tumblr.com"
      @mood = "Giffy"
    elsif url == "crlpvxx.tumblr.com"
      @mood = "Flawless"
    end
      
  	erb :mood
  end

end 