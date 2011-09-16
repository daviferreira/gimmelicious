require 'sinatra/base'
require 'haml'

class Gimmelicious < Sinatra::Base
  
  get '/' do
    haml :index
  end
  
end