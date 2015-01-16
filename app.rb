require 'bundler'
Bundler.require
require_relative 'lib/tumblr.rb'

class MyApp < Sinatra::Base
  get '/' do 
    @blog1 = Blog.new 
    erb :index
  end

  get '/happy' do 
    erb :happy
  end

  get '/sad' do
    erb :sad
  end

  get '/angry' do
    erb :angry
  end

  get '/funny' do 
    erb :funny
  end
end 