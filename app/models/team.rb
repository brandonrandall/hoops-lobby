class Team

  attr_reader :name, :abbrev, :fg_pct, :wins, :losses,
              :fouls_drawn_pg, :fouls_pg

  def initialize(team)
    @name = team["team"]["Name"]
    @abbrev = team["team"]["Abbreviation"]
    @fg_pct = team["stats"]["FgPct"]
    @wins = team["stats"]["Wins"]
    @losses = team["stats"]["Losses"]
    @fouls_dwawn_pg = team["stats"]["FoulsDrawnPerGame"]
    @fouls_pg = team["stats"]["FoulsPersPerGame"]
  end

end
