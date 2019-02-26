class Rugby::Scrape
  
  # initiate the scrape
  def self.today
    self.scrape_teams
  end 
  
  def self.scrape_teams
    # puts "in scrape"
    webpage = Nokogiri::HTML(open("https://www.rugby.com.au/competitions/super-rugby"))
    section = webpage.css("div.col-xs-12.col-md-4.col-xl-2")
    array_of_teams = section.css("div.team__name.meta-team__name span.link-text")
    
    array_of_teams.each do |team|
      team.text
      # binding.pry
    end   
  end
end  