class User < ApplicationRecord
	has_many :GameSession
	has_many :games, through: :game_sessions
	# sets primary key to username!
	#self.primary_key = "user_id"
	# cannot create another user with the same name.
	validates_uniqueness_of :user_id, :message => "username already exists!"
	validates :user_id, presence: true
	validates :avg_rank, numericality: { message: "%(value) seems off sir"}
	validates :kill_count, numericality: { message: "%(value) seems off sir"}

end
