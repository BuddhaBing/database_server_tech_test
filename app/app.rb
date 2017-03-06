require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    'Hello DatabaseServer!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
