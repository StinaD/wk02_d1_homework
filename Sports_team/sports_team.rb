#homework- PartB, 22/10/2018

class SportsTeam

  attr_reader :team_name, :players
  attr_accessor :captain, :points


  def initialize(team_name, players, captain, points)
    @team_name = team_name
    @players = players
    @captain = captain
    @points = points
  end

  # def team_name(name)
  #   return name
  # end
  #
  # def all_players(players)
  #   return players
  # end
  #
  # def captain_name(captain)
  #   return captain
  # end
  #
  # def update_captain(new_captain)
  #   return @captain = new_captain
  # end

 def add_player(new_player)
   @players.push(new_player)
 end

 def find_player(unconfirmed_player)
  if @players.find_index(unconfirmed_player) >= 0
    return "Player in team"
  else
    return "Player not in team"
  end
 end

 def points_updated(result)
   if result = "win"
     @points += 1
   end
 end


end
