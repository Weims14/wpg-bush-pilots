class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :team1
      t.integer :score1
      t.integer :score2
      t.string :team2
      t.string :date
      t.string :time
      t.string :location

      t.timestamps
    end
  end
end
