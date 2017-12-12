class Conference

  attr_reader :name, :conference_teams
              # :team

  def initialize(conference)
    @name = conference["@name"]
    # @conference_teams = conference["teamentry"]
    @conference_teams = format_teams(conference)
    # @western = data["conferenceteamstandings"]["conference"].last["@name"]
    # western_teams = data["conferenceteamstandings"]["conference"].last["teamentry"]
    # @western_teams = western_teams.map { |team| Team.new(team) }
    # @eastern = data["conferenceteamstandings"]["conference"].first["@name"]
    # eastern_teams = data["conferenceteamstandings"]["conference"].first["teamentry"]
    # @eastern_teams = eastern_teams.map { |team| Team.new(team) }
  end

  def format_teams(conference)
    conference["teamentry"].map { |team| Team.new(team) }
  end
end
