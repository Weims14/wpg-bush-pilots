class CreateSkaters < ActiveRecord::Migration[5.0]
  def change
    create_table :skaters do |t|
      t.integer :number
      t.string :name
      t.integer :goals
      t.integer :assists
      t.integer :points
      t.integer :pim
      t.string :pos
      t.integer :gp

      t.timestamps
    end
  end
end
