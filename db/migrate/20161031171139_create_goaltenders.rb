class CreateGoaltenders < ActiveRecord::Migration[5.0]
  def change
    create_table :goaltenders do |t|
      t.string :name
      t.integer :number
      t.integer :gp
      t.integer :wins
      t.integer :loses
      t.integer :otl
      t.float :winpercent
      t.integer :ga
      t.float :gaa
      t.integer :shutouts

      t.timestamps
    end
  end
end
