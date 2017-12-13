class Team

  attr_reader :name, :abbrev, :fg_pct, :wins,
              :losses, :fouls_drawn_pg, :fouls_pg,
              :threes, :ast_pg, :o_reb_pg, :d_reb_pg,
              :ft_pg, :ppg

  def initialize(team)
    @name = team["team"]["Name"]
    @abbrev = team["team"]["Abbreviation"]
    @fg_pct = team["stats"]["FgPct"]["#text"]
    @wins = team["stats"]["Wins"]["#text"]
    @losses = team["stats"]["Losses"]["#text"]
    @fouls_drawn_pg = team["stats"]["FoulsDrawnPerGame"]["#text"]
    @fouls_pg = team["stats"]["FoulPersPerGame"]["#text"]
    @threes = team["stats"]["Fg3PtMadePerGame"]["#text"]
    @ast_pg = team["stats"]["AstPerGame"]["#text"]
    @o_reb_pg = team["stats"]["OffRebPerGame"]["#text"]
    @d_reb_pg = team["stats"]["DefRebPerGame"]["#text"]
    @ft_pg = team["stats"]["FtAttPerGame"]["#text"]
    @ppg = team["stats"]["PtsPerGame"]["#text"]
  end

end
