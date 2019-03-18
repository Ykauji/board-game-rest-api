class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :numTurns
      t.string :winnerOfGame
      t.integer :timeElapsed

      t.timestamps
    end
  end
end
