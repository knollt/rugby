class Rugby::CLI 
 
  # start new CLI session
  def call 
    Rugby::Scrape.today
    greeting
    menu
  end  
  
  # greet user and list teams
  def greeting
    puts "Welcome rugby fan! \nLets explore one of the top rugby leagues in the world. \nSuper Rugby is comprised of 15 teams from the following counties: \nAustralia (4 teams) \nNew Zealand (5 teams) \nSouth Africa (4 teamss) \nJapan (1 team) \nArgentina (1 team)"
    puts " "
    puts "Below is a list of teams:"
    puts " "
    # list of teams method 
  end   
  
  def menu
    input = nil 
    while input != "exit"
      puts "What team would you like to view their players and positions? \nPlease type the team name and hit enter.  \nIf you wish to view the list of teams again, please type list and hit enter.  \nIf not interested, please type exit and hit enter."
      input = gets.strip.downcase
        case input
          when "team"
          #pull team object from scraped team webpage 
            puts "in team"
          when "list"
          #list of teams method 
            puts "in list"
          when "exit"
            goodbye
          else
            puts "Invalid entry"
            menu
          end
    end         
  end   
  
  def submenu
    
  end 
  
  def goodbye
    puts " "
    puts "Thank you!  Have a nice day and come back soon."
    puts " "
  end   
  
end   


# cli 

# greeting

# choose three conferences
# list teams based on conference picked
# list includes team name and url 
# pick team
# pull team roster - player name and player position


  