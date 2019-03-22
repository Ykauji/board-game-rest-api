class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_id
      t.decimal :avg_rank
      t.integer :kill_count
      t.integer :games_played

      t.timestamps
    end
  end
end
