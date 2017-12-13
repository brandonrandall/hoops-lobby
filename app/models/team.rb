class Team

  attr_reader :name, :abbrev, :fg_pct, :wins,
              :losses, :fouls_drawn_pg, :fouls_pg

  def initialize(team)
    @name = team["team"]["Name"]
    @abbrev = team["team"]["Abbreviation"]
    @fg_pct = team["stats"]["FgPct"]["#text"]
    @wins = team["stats"]["Wins"]["#text"]
    @losses = team["stats"]["Losses"]["#text"]
    @fouls_dwawn_pg = team["stats"]["FoulsDrawnPerGame"]["#text"]
    @fouls_pg = team["stats"]["FoulPersPerGame"]["#text"]
  end

end
