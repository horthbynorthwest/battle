require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Hi, Ninja"
end

get '/cat' do
  erb(:index)
end
