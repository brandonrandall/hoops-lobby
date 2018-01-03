class Game
  attr_reader :id, :away_team, :home_team, :time, :formatted_time

  def initialize(game)
    @id = game["id"]
    @time = game["time"]
    @away_team = game["homeTeam"]["Name"]
    @home_team = game["awayTeam"]["Name"]
  end

  def formatted_time
    split = @time.split(":")[1]
    hours = @time[0..2].to_i
    minutes = split[0..1].to_i
    separated = [split[0..1],split[-2..-1]]
  end
end
