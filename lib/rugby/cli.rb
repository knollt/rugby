class Rugby::CLI 
 
  # start new CLI session
  def call 
    Rugby::Scrape.today
    greeting
    menu
  end  
  
  # greet user and list teams
  def greeting
    puts "Let's play rugby!"
  end   
  
  def menu
    
  end   
end   
  