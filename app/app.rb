require 'sinatra/base'
require_relative 'models/key_value'
require_relative 'controllers/key_values'

class DatabaseServer < Sinatra::Base
  set :server, %w[thin mongrel webrick]
  set :root, File.dirname(__FILE__)
  set :port, 4000

  # start the server if ruby file executed directly
  run! if app_file == $0
end
