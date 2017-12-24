class Game
  attr_reader :id, :away_team, :home_team, :time

  def initialize(game)
    @id = game["id"]
    @time = game["time"]
    @away_team = game["homeTeam"]["Name"]
    @home_team = game["awayTeam"]["Name"]
  end
end
