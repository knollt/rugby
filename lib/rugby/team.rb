class Rugby::Team 
  # create reader/writer methods/attributes or properties for each climbing city 
  attr_accessor :name, :url 
  
  @@all = []
  
  #initialize a team instance with properties and adds to @@all array 
  def initialize (name, url)
    @name = name
    @url = url
    @@all << self
  end 
  
  #call all team objects
  def self.all
    @@all
  end 
  
  
end   