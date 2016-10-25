class FixColumnName < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :schedules, :score1, :score
  end
end
