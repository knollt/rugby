class Rugby::Scrape
  
  # initiate the scrape
  def self.today
    self.scrape_teams
  end 
  
  # scrape website for list of teams and url 
  def self.scrape_teams
    doc = Nokogiri::HTML(open("https://www.rugby.com.au/competitions/super-rugby"))
    doc.search("div.col-xs-12.col-md-4.col-xl-2 a").each do |z|
       Rugby::Team.new(z.attributes['href'].value, z.children[1].children[3].children[1].children[0].text)
    end   
  end

  
# scrape player and player position for each team 
  def self.team_info(team)
    team_page = Nokogiri::HTML(open(team.url))
    player = team_page.search("div.meta-player")
    player.each do |player|
      #creating an instance
      player_info = Rugby::Player.new 
    
      # assigning player attributes    
      player_info.player = player.children[3].children[0].text
      player_info.position = player.children[5].children.text
    
      # associate player and team
      team.add_player(player_info)
    end
  end 
    
end  




