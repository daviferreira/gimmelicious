require 'sinatra/base'
require 'haml'
require 'nokogiri'

class Gimmelicious < Sinatra::Base
  
  get '/' do
    haml :index
  end
  
  post '/upload' do
    doc = Nokogiri::XML(File.open(params[:bookmarks][:tempfile]))
    @bookmarks = doc.xpath("//post")
    haml :bookmarks
  end
  
end