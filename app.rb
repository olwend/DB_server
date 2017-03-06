require 'sinatra'

class App < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Simple Server'
  end

  post '/set' do |variable|

  end

  get '/set' do
    #"Set " + params[:somekey] + " =" + params[:somevalue]
    #put value - key logic here
    erb :index
  end

  run! if app_file ==$0
end
