class Game
  attr_reader :id, :away_team, :home_team

  def initialize(game)
    @id = game["id"]
    @away_team = game["homeTeam"]["Name"]
    @home_team = game["awayTeam"]["Name"]
  end
end
