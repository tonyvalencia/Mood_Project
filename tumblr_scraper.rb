require 'open-uri'
require 'nokogiri'

tumblr_html = open("http://funnyoo.tumblr.com/")

tumblr_nokogiri = Nokogiri::HTML(tumblr_html)

end

puts tumblr_nokogiri