require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    locations_array = []
    url_array = []
    names_array = []
    final_array = []
    html = open("#{index_url}")
    doc = Nokogiri::HTML(html)

  end

  def self.scrape_profile_page(profile_url)
    
  end

end

