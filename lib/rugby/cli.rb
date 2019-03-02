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
    list_teams
  end   
  
  def menu
    input = nil 
    while input != "exit"
      puts "What team would you like to view their players and positions? \nPlease type the team name and hit enter.  \nIf you wish to view the list of teams again, please type list and hit enter.  \nIf not interested, please type exit and hit enter."
      input = gets.strip.downcase
        case input
          when "lions"
            #pull team object from scraped team webpage 
            team = Rugby::Player.roster_lions
            submenu
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
    inputted = nil
    puts " "
    puts "Would you like to select a diffent team? Enter Y or N."
    puts " "
    inputted = gets.strip.downcase
    if inputted == "y"
      menu
    elsif inputted == "n"  
      goodbye
    else 
      puts "I don't understand your answer."
      submenu
    end   
  end 
  
  def goodbye
    puts " "
    puts "Thank you!  Have a nice day and come back soon."
    puts " "
  end   
  
  
  def list_teams
    # list of teams method 
    Rugby::Team.all.each.with_index(1) do |team, i|
      print "#{i}. #{team.name}"
      puts " "
      print "#{team.url}"
      puts " "
    end   
  end   
  
end   


# cli 

# greeting

# choose three conferences
# list teams based on conference picked
# list includes team name and url 
# pick team
# pull team roster - player name and player position


  