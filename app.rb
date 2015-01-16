require 'bundler'
Bundler.require
require_relative 'lib/tumblr.rb'

class MyApp < Sinatra::Base
  get '/' do 
    @blog1 = Blog.new 
    erb :index
  end
end 