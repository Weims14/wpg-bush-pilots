class AddActiveSeasonToTeamRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :team_records, :active_season, :boolean
  end
end
