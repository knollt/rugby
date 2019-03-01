class Rugby::Scrape
  
  # initiate the scrape
  def self.today
    self.scrape_teams
  end 
  
  def self.scrape_teams
    # puts "in scrape"
    doc = Nokogiri::HTML(open("https://www.rugby.com.au/competitions/super-rugby"))
    # section = doc.css("div.col-xs-12.col-md-4.col-xl-2")
    # binding.pry
    
    doc.search("div.col-xs-12.col-md-4.col-xl-2 a").each do |z|
      # binding.pry 
       Rugby::Team.new(z.attributes['href'].value, z.children[1].children[3].children[1].children[0].text)
      # binding.pry 
    end   
    
 
  end
end  


   # section.each do |team|
      # binding.pry
      # url = team.css("a.module.team.pullout-xs.pullout--padded.attributes['href'].value")
      # team = team.css("a.module.team.pullout-xs.pullout--padded div.team__name.meta-team__name span.link-text").text
      # binding.pry
    # end
    
    
    # array_of_url = section.css("a.module.team.pullout-xs.pullout--padded")
    # # # section.css("a.module.team.pullout-xs.pullout--padded div.team__name.meta-team__name span.link-text")[0].text
    # # # section.css("a.module.team.pullout-xs.pullout--padded div.team__name.meta-team__name span.link-text")[1].text
    # # array_of_teams = section.css("a.module.team.pullout-xs.pullout--padded div.team__name.meta-team__name span.link-text")
    
    # array_of_url.each do |url|
    #   binding.pry
    #   # Rugby::Team.new(url.attributes['href'].value, z.children[1].children[3].children[1].children[0].text)
    #   # binding.pry
    # end

