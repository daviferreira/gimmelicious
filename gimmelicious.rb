require 'sinatra/base'
require 'haml'
require 'nokogiri'
require 'uuidtools'

class Gimmelicious < Sinatra::Base

  enable :sessions

  configure(:development) { set :session_secret, "26c0d59a054cc8ee3916fe9a5a741d66b181f865" }
 
  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end

  get '/' do
    unless session['uuid'].nil?
      @unique_id = session['uuid']
      doc = Nokogiri::XML(File.open(File.join(File.dirname(__FILE__), 'bookmarks', "#{@unique_id}.xml")))
      @total_bookmarks = doc.xpath("*")[0].attributes['total'].value
      @tags = list_tags doc.xpath("//post")
    end
    haml :index
  end
  
  post '/upload' do
    session['uuid'] = UUIDTools::UUID.timestamp_create().to_s
    content = params[:bookmarks][:tempfile].read
    file = File.new(File.join(File.dirname(__FILE__), 'bookmarks', "#{session['uuid']}.xml"), "w")
    file.write(content)
    file.close
    redirect '/'
  end

  private

    def list_tags(posts)
      tags = []
      posts.each do |post|
        tag = post.attributes["tag"].value.split(' ')
        tag.each{ |t| tags.push(t) unless tags.include?(t) }
      end
      tags
    end
  
end
