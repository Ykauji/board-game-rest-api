class User < ApplicationRecord
	has_many :game_sessions
	has_many :games, through: :game_sessions
	# sets primary key to username!
	#self.primary_key = "user_id"
	# cannot create another user with the same name.
	validates_uniqueness_of :user_id, :message => "username already exists!"

end
