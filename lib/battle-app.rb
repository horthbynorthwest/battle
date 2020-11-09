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

post '/named-cat' do
  p params
  @color = ["red", "blue", "green"].sample
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end
