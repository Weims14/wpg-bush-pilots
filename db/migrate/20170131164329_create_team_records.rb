class CreateTeamRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :team_records do |t|
      t.text :season
      t.text :season_record

      t.timestamps
    end
  end
end
