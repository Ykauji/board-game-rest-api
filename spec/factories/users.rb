FactoryBot.define do
  factory :user do
    	username { Faker::Name.name }
    	#temp = Faker::Alphanumeric.alpha
    	password { 'potato' }
    	password_confirmation {'potato'}
		avg_rank { Faker::Number.between(1,4) }
		kill_count { Faker::Number.between(1,300) }
		games_played { Faker::Number.between(1,100) }
  end
end