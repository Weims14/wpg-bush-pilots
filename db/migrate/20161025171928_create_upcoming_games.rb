class CreateUpcomingGames < ActiveRecord::Migration[5.0]
  def change
    create_table :upcoming_games do |t|
      t.string :team1
      t.string :team2
      t.string :date
      t.string :time
      t.string :location

      t.timestamps
    end
  end
end
