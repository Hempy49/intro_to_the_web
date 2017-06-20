require 'sinatra'
require 'shotgun'

get '/' do
	'Hello!'
end

get '/apples' do
	'Apples!'
end

get '/secret' do
	'This is a secret!'
end

get '/random-cat' do
	@name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
	erb(:index2)
end

post '/named-cat' do
	@name = params[:name]
  erb(:index)
end
