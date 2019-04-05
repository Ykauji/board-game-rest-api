class User < ApplicationRecord

	# encrypt passwordo
	has_secure_password

	has_many :GameSession
	has_many :games, through: :game_sessions
	# sets primary key to username!
	#self.primary_key = "user_id"
	# cannot create another user with the same name.
	validates_uniqueness_of :username, :message => "username already exists!"
	validates :username, presence: true, length: {minimum: 3, maximum: 27}
	validates :password_digest, presence: true
	validates :kill_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 100000000000, message: "must be within 0 >= x <= 99999999999"}

end
