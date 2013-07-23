require 'sinatra'

get '/form' do
  erb :form
end

post '/upload' do
  params.inspect
end