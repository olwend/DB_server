require 'sinatra'
require './lib/datastore'
require 'json'

class App < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Simple Server'
  end

  get '/set' do
    datastore = Datastore.new
    p @somehash = Hash[params[:somekey] =>params[:somevalue]]
    erb :index
  end

  get '/get' do
    content_type :json
    p @somehash[params[:key]]
  end

  run! if app_file ==$0
end
