FactoryBot.define do
  factory :user do
    	username { Faker::Name.name }
    	password_digest { Faker::Name.name }
		avg_rank { Faker::Number.between(1,4) }
		kill_count { Faker::Number.between(1,300) }
		games_played { Faker::Number.between(1,100) }
  end
end

FactoryBot.define do
  factory :game do
  			num_turns { Faker::Number.between(0,100) }
			winner_of_game { Faker::Name.name }
			time_elapsed { Faker::Number.between(10,30) }
  end
end

FactoryBot.define do
  factory :gameSession do
  			association :User
  			association :Game
			total_damage_dealt { Faker::Number.between(100,1000) }
			total_damage_taken { Faker::Number.between(100,1000) }
			total_healing { Faker::Number.between(100,1000) }
			num_kills { Faker::Number.between(0,3) }
			weapons_collected { Faker::Number.between(1,100) }
  end
end
