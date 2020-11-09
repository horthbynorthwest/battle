require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Hi, Ninja"
end

get '/random-cat' do
  @color = "red"
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @color = params[:color]
  @name = params[:name]
  erb(:index)
end
