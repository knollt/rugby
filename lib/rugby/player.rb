class Rugby::Player
  attr_accessor :player, :position 
  
  
  @@info = [] #may need?
  

  
  
  # def self.roster_lions
  #   # puts "in lions scrape"
  #   doc_lion = Nokogiri::HTML(open("https://www.rugby.com.au/teams/lions"))
  #   # binding.pry
  #   player_name = doc_lion.search("div.meta-player").children[3].children[0].text
  #   player_position = doc_lion.search("div.meta-player").children[5].children.text
  # end   
  
  # def self.roster_highlanders
  #   doc_highlanders = Nokogiri::HTML(open("https://www.rugby.com.au/teams/highlanders"))
  #   binding.pry
  #   # player_name = doc_highlander.search("div.meta-player").children[3].children[0].text
  #   # player_position = doc_highlander.search("div.meta-player").children[5].children.text
  # end   

  # def self.roster_bulls
  #   doc_bulls = Nokogiri::HTML(open("https://www.rugby.com.au/teams/bulls"))
    
    
  # end   

  # def self.roster_hurricanes
  #   doc_hurricanes = Nokogiri::HTML(open("https://www.rugby.com.au/teams/hurricanes"))
    
    
  # end   
  
  # def self.roster_reds
  #   doc_reds = Nokogiri::HTML(open("https://www.rugby.com.au/teams/reds"))
    
    
  # end 

  # def self.roster_chiefs
  #   doc_chiefs = Nokogiri::HTML(open("https://www.rugby.com.au/teams/chiefs"))
    
    
  # end   

  # def self.roster_rebels
  #   doc_rebelc = Nokogiri::HTML(open("https://www.rugby.com.au/teams/rebels"))
    
    
  # end  
  
  # def self.roster_jaguares
  #   doc_jaguares = Nokogiri::HTML(open("https://www.rugby.com.au/teams/jaguares"))
    
    
  # end  
  
  # def self.roster_sharks
  #   doc_sharks = Nokogiri::HTML(open("https://www.rugby.com.au/teams/sharks"))
    
    
  # end  
  
  # def self.roster_stormers
  #   doc_stormers = Nokogiri::HTML(open("https://www.rugby.com.au/teams/stormers"))
    
    
  # end  
  
  # def self.roster_nsw_waratahs
  #   doc_waratahs = Nokogiri::HTML(open("https://www.rugby.com.au/teams/nsw-waratahs"))
    
    
  # end  
  
  # def self.roster_blues
  #   doc_blues = Nokogiri::HTML(open("https://www.rugby.com.au/teams/blues"))
    
    
  # end  
  
  # def self.roster_sunwolves
  #   doc_sunwolves = Nokogiri::HTML(open("https://www.rugby.com.au/teams/sunwolves"))
    
    
  # end  
  
  # def self.roster_crusaders
  #   doc_crusaders = Nokogiri::HTML(open("https://www.rugby.com.au/teams/crusaders"))
    
    
  # end  
  
  # def self.roster_brumbies
  #   doc_brumbies = Nokogiri::HTML(open("https://www.rugby.com.au/teams/brumbies"))
    
    
  # end  
  
end   