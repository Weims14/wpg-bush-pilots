json.extract! upcoming_game, :id, :team1, :team2, :date, :time, :location, :created_at, :updated_at
json.url upcoming_game_url(upcoming_game, format: :json)