class Rugby::Team 
  # create reader/writer methods/attributes or properties for each climbing city 
  attr_accessor :name, :url 
  
  @@all = []
  
  #initialize a team instance with properties and adds to @@all array 
  def initialize (url, name)
    @url = "https://www.rugby.com.au" + url
    @name = name
    
    @@all << self
  end 
  
  #call all team objects
  def self.all
    @@all
  end 
  
  
end   