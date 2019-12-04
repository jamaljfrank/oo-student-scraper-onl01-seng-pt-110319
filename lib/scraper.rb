require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    scraped_students = []
    index_page = Nokogiri::HTML(open(index_url))
    index_page.css("div.roster-cards-container").each do |profile|
      profile.css(".student-card a").each do |student|
        student_name = student.css(".student-name").text
        student_link = "#{student.attr('href')}"
        student_location = student.css(".student-location").text

    
    scraped_students << {name: student_name, location: student_location, profile_url: student_link }
      end
    end
    scraped_students
  end

  def self.scrape_profile_page(profile_url)
    scraped_attr = []
    index_page = Nokogiri::HTML(open(profile_url))
    index_page.css("div.roster-cards-container").each do |profile|
      profile.css(".student-card a").each do |student|
        student_name = student.css(".student-name").text
        student_link = "#{student.attr('href')}"
        student_location = student.css(".student-location").text

    
    scraped_attr << {name: student_name, location: student_location, profile_url: student_link }
      end
    end
    scraped_attr
  end

end

