class Rugby::Scrape
  
  # initiate the scrape
  def self.today
    self.scrape_teams
  end 
  
  def self.scrape_teams
    # puts "in scrape"
    webpage = Nokogiri::HTML(open("https://www.rugby.com.au/competitions/super-rugby"))
    section = webpage.css("div.col-xs-12.col-md-4.col-xl-2")
    # binding.pry
    
    array_of_url = section.css("a.module.team.pullout-xs.pullout--padded")
    # section.css("a.module.team.pullout-xs.pullout--padded div.team__name.meta-team__name span.link-text")[0].text
    # section.css("a.module.team.pullout-xs.pullout--padded div.team__name.meta-team__name span.link-text")[1].text
    array_of_teams = section.css("a.module.team.pullout-xs.pullout--padded div.team__name.meta-team__name span.link-text")
    
    array_of_url.each do |url|
      # binding.pry
      Rugby::Team.new(url.attributes['href'].value)
      # binding.pry
    end
    
    array_of_teams.each do |team|
      # binding.pry
      Rugby::Team.new(team.text)
      # binding.pry
    end
    
  end
end  