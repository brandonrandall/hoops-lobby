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
    games = msf.msf_get_data(
                            'nba',
                            'current',
                            'full_game_schedule',
                            'json',
                            'date' => 'today'
                            )
    @now = Time.now.strftime("%I:%M%p")
    @games = games["fullgameschedule"]["gameentry"]
    .map {|game| Game.new(game)}
    @conference_results = data["conferenceteamstandings"]["conference"]
    .map { |conference| Conference.new(conference)}.reverse
    @west_images = ["cp3.jpg",
                    "draymond.jpg",
                    "kawhi.jpg",
                    "butler.jpg",
                    "joker.jpg",
                    "dame.jpg",
                    "boogie.jpg",
                    "gobert.jpg"]
    @east_images = ["kyrie.jpg",
                    "kyle.jpg",
                    "bron.jpg",
                    "g.jpg",
                    "greek_freak.jpg",
                    "wall.jpg",
                    "unicorn.jpg",
                    "drummond.jpg"]
    @west_random_image = @west_images[rand(@west_images.length)]
    @east_random_image = @east_images[rand(@east_images.length)]
  end
end
