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
