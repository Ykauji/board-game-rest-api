# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#holds all names created in seed!
names = Array.new

10.times do 

	# Add new name!
	new_name = Faker::Name.name
	names << new_name

	User.create({
		username: new_name,
		avg_rank: Faker::Number.between(1,4),
		kill_count: Faker::Number.between(1,300),
		games_played: Faker::Number.between(1,100)
	})
end

10.times do 
	#random winner of game!
	local_winner = Faker::Number.between(1,User.last.id)

	Game.create({
		num_turns: Faker::Number.between(20,100),
		winner_of_game: local_winner,
		time_elapsed: Faker::Number.between(10,30)
	})

	last_game_id = @game = Game.last
	# Create Game_Sessions! w/ winner of game.
	GameSession.create!({
		user_id: local_winner,
		game_id: last_game_id.id,
		total_damage_dealt: Faker::Number.between(100,1000),
		total_damage_taken: Faker::Number.between(100,1000),
		total_healing: Faker::Number.between(100,1000),
		num_kills: Faker::Number.between(0,3),
		weapons_collected: Faker::Number.between(1,100)
	})
	# Randomize other players in game.
	3.times do 
		GameSession.create!({
			user_id: Faker::Number.between(1,User.last.id),
			game_id: last_game_id.id,
			total_damage_dealt: Faker::Number.between(100,1000),
			total_damage_taken: Faker::Number.between(100,1000),
			total_healing: Faker::Number.between(100,1000),
			num_kills: Faker::Number.between(0,3),
			weapons_collected: Faker::Number.between(1,100)
		})
	end
end