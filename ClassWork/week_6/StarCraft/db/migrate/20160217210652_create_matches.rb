class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :winner_faction
      t.integer :loser_faction
      t.time :duration
      t.date :date

      t.timestamps null: false
    end
  end
end
