class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :userid
      t.decimal :avg_rank
      t.integer :killCount
      t.integer :gamesPlayed

      t.timestamps
    end
  end
end
