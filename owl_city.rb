# file: owl_city.rb

require 'nokogiri'
require 'open-uri'
require 'pry'


owl_city_html = open('https://twitter.com/owlcity')
owl_city_doc = Nokogiri::HTML(owl_city_html)

updates = []

# Iterate through the updates
owl_city_doc.css("div.StreamItem div.ProfileTweet").each do |project|
  date = project.css(".ProfileTweet-timestamp").text.strip #css of date
  if date[-1] == "m" # check if last character is an m - strings have indexes
    updates << {
      :body => project.css(".ProfileTweet-text").text,
      :time_stamp => project.css(".ProfileTweet-timestamp").text.strip
    }
  end
end


binding.pry

