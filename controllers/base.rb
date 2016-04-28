require 'sinatra'

# Basec class for ConfigShare Web Application
class ShareConfigurationsApp < Sinatra::Base
  set :views, File.expand_path('../../views', __FILE__)

  get '/' do
    slim :home
  end
end
