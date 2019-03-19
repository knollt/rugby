class Rugby::CLI 
 
  # start new CLI session
  def call 
    # Rugby::Scrape.today
    @counter == 0 
    greeting
  end  
  
  # greet user and list teams
  def greeting
    puts "Welcome rugby fan! \nLets explore one of the top rugby leagues in the world. \nSuper Rugby is comprised of 15 teams from the following counties: \nAustralia (4 teams) \nNew Zealand (5 teams) \nSouth Africa (4 teamss) \nJapan (1 team) \nArgentina (1 team)"
    puts " "
    Rugby::Scrape.today
    menu
  end   
  
  # takes team chosen and fetches player roster
  def menu
      puts "\nWould you like to learn more about a particular team? \nIf so, please type team and hit enter.\nIf not interested, please type exit and hit enter."
      input = gets.strip.downcase
      case input
        when "team"
          @team = "team"  
          if @counter == 0 
            scrape_teams
            @counter == 1 
          end  
            list_teams
            choose_team
        when "exit"
            goodbye
        else
          puts "Sorry, I didn't understand that input."
          menu
        end
  end   
  

  
  # exit message
  def goodbye
    puts " "
    puts "Thank you!  Have a nice day and come back soon."
    puts " "
  end   
  
  #display list of teams
  def list_teams
    Rugby::Team.all.each.with_index(1) do |team, i|
      print "#{i}. #{team.name}".colorize(:yellow)
      puts " "
    end   
  end   
  
  
  def choose_team
    puts "\nChoose the number of the team you would like to view the teams roster"
    input = gets.strip.to_i 
    max_value = Rugby::Team.all.length
    if input.between?(1,max_value)
      team = Rugby::Team.all[input-1]
      display_team(team)
    else 
      puts "Invalid number."
      choose_team
    end   
  end
  
  # guides to team url page to scrape player info
  def display_team(team) #passes team obect
    Rugby::Scrape.team_info(team)
    puts "Here are the current #{team.name} player roster:\n"
    
    team.player.each.with_index(1) do |p, i|   #represents an array of player objects
    # print player name and position
      puts "#{i}. #{p.player} - #{p.position}".colorize(:green)
    end
    submenu
  end  
  
  # print continue or exit message
  def submenu
    inputted = nil
    puts " "
    puts "Would you like to select a diffent team? Enter Y or N."
    puts " "
    inputted = gets.strip.downcase
    if inputted == "y"
      list_teams
      choose_team
    elsif inputted == "n"  
      goodbye
    else 
      puts "I don't understand your answer."
      submenu
    end   
  end 
  
  def scrape_team
      team =  Rugby::Team.scrape_teams(@team)
  end
end   



   
  