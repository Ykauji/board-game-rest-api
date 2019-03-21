class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :userid, :user_id
  	rename_column :users, :gamesPlayed, :games_played
  	rename_column :games, :numTurns, :num_turns
  	rename_column :games, :winnerOfGame, :winner_of_game
  	rename_column :games, :timeElapsed, :time_elapsed
  end
end
