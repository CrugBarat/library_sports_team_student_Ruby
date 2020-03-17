class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   return @coach = new_coach
  # end

  def add_new_player(new_player_name)
    @players.push(new_player_name)
    return @players
  end

  def check_for_player(player_name)
    @players.include? player_name
  end

  def update_points(team_result)
    if team_result == "win"
      @points += 3
    end
  end

end
