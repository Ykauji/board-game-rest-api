# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
	User.create({
		userid: Faker::Name.name,
		avg_rank: Faker::Number.between(1,4),
		killCount: Faker::Number.between(1,300),
		gamesPlayed: Faker::Number.between(1,100)
	})
end

10.times do 
	Game.create({
		numTurns: Faker::Number.between(20,100),
		winnerOfGame: Faker::Name.name,
		timeElapsed: Faker::Number.between(10,30)
	})
end