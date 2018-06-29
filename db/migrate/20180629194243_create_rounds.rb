class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.date :date
      t.string :course
      t.string :location
      t.integer :par
      t.integer :score

      t.timestamps
    end
  end
end
