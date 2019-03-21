class CreateGameSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_sessions do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.integer :total_damage_dealt
      t.integer :total_damage_taken
      t.integer :total_healing
      t.integer :num_kills
      t.integer :weapons_collected

      t.timestamps
    end



  end
end
