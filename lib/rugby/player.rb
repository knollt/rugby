class Rugby::Player
  
# scrape roster for each team 

  def self.roster_lions
    # puts "in lions scrape"
    doc_lion = Nokogiri::HTML(open("https://www.rugby.com.au/teams/lions"))
    binding.pry
    # player_name = doc_lion.search("div.meta-player").children[3].children[0].text
    # player_position = doc_lion.search("div.meta-player").children[5].children.text
  end   
  
  def self.roster_highlanders
    
  end   

  def self.roster_bulls
    
  end   

  def self.roster_hurricanes
    
  end   
  
  def self.roster_reds
    
  end 

  def self.roster_chiefs
    
  end   

  def self.roster_rebels
    
  end  
  
  def self.roster_jaguares
    
  end  
  
  def self.roster_sharks
    
  end  
  
  def self.roster_stormers
    
  end  
  
  def self.roster_nsw_waratahs
    
  end  
  
  def self.roster_blues
    
  end  
  
  def self.roster_sunwolves
    
  end  
  
  def self.roster_crusaders
    
  end  
  
  def self.roster_brumbies
    
  end  
  
end   