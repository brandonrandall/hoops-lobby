class Conference
  attr_reader :name, :conference_teams, :east_images, :name_upcased

  def initialize(conference)
    @name = conference["@name"]
    @name_upcased = conference["@name"][0..3].upcase
    @conference_teams = format_teams(conference)
  end

  def format_teams(conference)
    conference["teamentry"].map { |team| Team.new(team) }
  end
end
