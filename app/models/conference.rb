class Conference
  attr_reader :name, :conference_teams

  def initialize(conference)
    @name = conference["@name"]
    @conference_teams = format_teams(conference)
  end

  def format_teams(conference)
    conference["teamentry"].map { |team| Team.new(team) }
  end
end
