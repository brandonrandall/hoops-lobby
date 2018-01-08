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
    @west_images = ["hou_cp3.jpg",
                    "gsw_draymond.jpg",
                    "sas_kawhi.jpg",
                    "min_butler.jpg",
                    "den_joker.jpg",
                    "por_dame.jpg",
                    "nop_boogie.jpg",
                    "uta_gobert.jpg"]
    @east_images = ["bos_kyrie.jpg",
                    "tor_kyle.jpg",
                    "cle_bron.jpg",
                    "mil_g.jpg",
                    "was_wall.jpg",
                    "nyk_unicorn.jpg",
                    "det_drummond.jpg",
                    "mia_gor.jpg",
                    "phi_joel.jpg"]
    @west_random_image = @west_images[rand(@west_images.length)]
    @east_random_image = @east_images[rand(@east_images.length)]
  end
end
