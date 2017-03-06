require 'sinatra'
set :port, 4000
enable :sessions

class App < Sinatra::Base

  get '/' do
    'Simple Server'
  end

  post '/set' do |variable|

  end

  get '/set' do
    #put value - key logic here
    erb :index
  end

  run! if app_file ==$0
end
