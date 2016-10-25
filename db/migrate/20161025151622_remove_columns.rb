class RemoveColumns < ActiveRecord::Migration[5.0]
  def self.up
  remove_column :schedules, :score2
end
end
