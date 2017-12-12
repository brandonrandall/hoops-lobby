require "mysportsfeeds"

class TeamsController < ApplicationController
  def index
    msf = MySportsFeeds.new(version="1.0", true)
    msf.authenticate("Brandon1985", "Brandon1985")
    data = msf.msf_get_data(
                            'nba',
                            'current',
                            'conference_team_standings',
                            'json'
                            )
    # @conference_results = Conference.new(data)
    @conference_results = data["conferenceteamstandings"]["conference"]
    .map { |conference| Conference.new(conference)}
  end
end
