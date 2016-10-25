class ChangeScoreToStringSchedule < ActiveRecord::Migration[5.0]
  def self.up
    change_column :schedules, :score, :string
  end
end
