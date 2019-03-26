class Rugby::Team 
  # create reader/writer methods/attributes or properties for each climbing city 
  attr_accessor :name, :url, :team
  attr_reader :player, :position #has many relationships
  
  @@all = []
  
  #initialize a team instance with properties and adds to @@all array 
  def initialize (url, name)
    @url = "https://www.rugby.com.au" + url
    @name = name
    @player = []
    @@all << self #saving and remember object
  end 
  
  #call all team objects
  def self.all
    @@all
  end 
  
  # associating team about player
  def add_player (player_info)
    self.player << player_info
    player_info.team = self
  end 
end   