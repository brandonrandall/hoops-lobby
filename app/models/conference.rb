class Conference
  attr_reader :name, :conference_teams, :east_images, :west_images

  def initialize(conference)
    @name = conference["@name"]
    @conference_teams = format_teams(conference)
    @west_images = ["boogie.jpg","butler"]
    @east_images = ["bron.jpg","kyrie"]
  end

  def format_teams(conference)
    conference["teamentry"].map { |team| Team.new(team) }
  end
end
