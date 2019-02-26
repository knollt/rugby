class Rugby::Scrape
  
  # initiate the scrape
  def self.today
    self.scrape_teams
  end 
  
  def self.scrape_teams
    # puts "in scrape"
    league_webpage = Nokogiri::HTML(open("https://www.rugby.com.au/competitions/super-rugby"))
    binding.pry
  end
end  