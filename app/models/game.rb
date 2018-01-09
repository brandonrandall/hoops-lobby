class Game
  attr_reader :id, :away_team, :home_team,
              :game_time, :formatted_game_time,
              :formatted_current_time

  def initialize(game)
    @id = game["id"]
    @game_time = game["time"]
    @away_team = game["homeTeam"]["Name"]
    @home_team = game["awayTeam"]["Name"]
  end

  def formatted_game_time
    split = @game_time.split(":")[1]
    hours = @game_time[0..2]
    minutes = split[0..1].to_i
    separated = [split[0..1],split[-2..-1]]
    game_time_string = separated.unshift(hours)
    if game_time_string[2] == "PM"
      game_time_string[0] = (game_time_string[0].to_i + 12)
    else
      game_time_string[0] = game_time_string[0].to_i
    end
    game_time_string
  end

  def formatted_current_time
    current_time = Time.now.strftime("%I:%M%p")
    split = current_time.split(":")[1]
    hours = current_time[0..2]
    minutes = split[0..1].to_i
    separated = [split[0..1],split[-2..-1]]
    current_time_string = separated.unshift(hours)
    if current_time_string[2] == "PM"
      current_time_string[0] = (current_time_string[0].to_i + 12)
    elsif condition
    else
      current_time_string[0] = current_time_string[0].to_i
    end
    current_time_string
  end
end
