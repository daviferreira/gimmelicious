require 'nokogiri'

doc = Nokogiri::XML(File.open(File.join(File.dirname(__FILE__), '/../features/files', 'bookmarks.xml')))
doc.xpath("//post").each do |post|
  p post.attributes["description"].value + "\n"
end