class Team
  attr_reader :name, :abbrev, :fg_pct, :wins,
            :losses, :fouls_drawn_pg, :fouls_pg,
            :ppg, :threes, :ast_pg, :o_reb_pg, :d_reb_pg

  def initialize(team)
    @o_reb_pg = team["stats"]["OffRebPerGame"]["#text"]
    @d_reb_pg = team["stats"]["DefRebPerGame"]["#text"]
    @ast_pg = team["stats"]["AstPerGame"]["#text"]
    @ppg = team["stats"]["PtsPerGame"]["#text"]
    @name = team["team"]["Name"]
    @abbrev = team["team"]["Abbreviation"]
    @fg_pct = team["stats"]["FgPct"]["#text"]
    @wins = team["stats"]["Wins"]["#text"]
    @losses = team["stats"]["Losses"]["#text"]
    @fouls_drawn_pg = team["stats"]["FoulsDrawnPerGame"]["#text"]
    @fouls_pg = team["stats"]["FoulPersPerGame"]["#text"]
    @threes = team["stats"]["Fg3PtMadePerGame"]["#text"]
  end
end
