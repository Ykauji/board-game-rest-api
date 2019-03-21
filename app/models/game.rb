class Game < ApplicationRecord
	has_many :game_sessions
	validates :num_turns, presence: true
	validates :winner_of_game, presence: true
	validates :time_elapsed, presence: true
end
