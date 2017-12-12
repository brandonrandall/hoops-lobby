class Team

  attr_reader :name, :abbrev

  def initialize(team)
    @name = team["team"]["Name"]
    @abbrev = team["team"]["Abbreviation"]
    # @team = team
    # @name = team["team"]["Name"]
    # @abbreviation = team["team"]["Abbreviation"]
  end

end
