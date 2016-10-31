class CreateAlumniSkaters < ActiveRecord::Migration[5.0]
  def change
    create_table :alumni_skaters do |t|
      t.integer :number
      t.string :name
      t.string :position
      t.integer :gp
      t.integer :goals
      t.integer :assists
      t.integer :points
      t.integer :pim
      t.integer :seasons

      t.timestamps
    end
  end
end
