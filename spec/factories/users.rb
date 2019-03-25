FactoryBot.define do
  factory :User do
    	username { Faker::Name.name }
		avg_rank { Faker::Number.between(1,4) }
		kill_count { Faker::Number.between(1,300) }
		games_played { Faker::Number.between(1,100) }
  end
end