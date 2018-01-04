class Conference
  attr_reader :name, :conference_teams,
              :east_images, :name_upcased,
              :highest_win_percentage

  def initialize(conference)
    @name = conference["@name"]
    @name_upcased = conference["@name"][0..3].upcase
    @conference_teams = format_teams(conference)
  end

  def format_teams(conference)
    conference["teamentry"].map { |team| Team.new(team) }
  end

  def highest_win_percentage
    conference_teams.max { |team| (team.wins.to_i / (team.wins.to_i + team.losses.to_f)) }.name
  end
end
