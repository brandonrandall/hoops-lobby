xdescribe "team" do
  xit "team has win streaks" do
    rockets = Team.create(
                          name: "HOU Rockets",
                          wins: "27",
                          losses: "23",
                          games: nil
                          )
    total_games = rockets.games.to_a.push((rockets.wins.to_i),(rockets.losses.to_i))
    win = 1
    total_games.prepend(win)
    loss = 1
    total_games.append(loss)
    win = 1
    total_games.prepend(win)
    win = 1
    total_games.prepend(win)

  end
end
