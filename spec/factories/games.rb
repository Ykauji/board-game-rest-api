FactoryBot.define do
  factory :game do
  			num_turns { Faker::Number.between(0,100) }
			winner_of_game { Faker::Name.name }
			time_elapsed { Faker::Number.between(10,30) }
  end
end