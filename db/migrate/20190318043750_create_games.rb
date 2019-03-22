class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :num_turns
      t.string :winner_of_game
      t.integer :time_elapsed

      t.timestamps
    end
  end
end
