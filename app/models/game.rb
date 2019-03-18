class Game < ApplicationRecord
	validates :numTurns, presence: true
	validates :winnerOfGame, presence: true
	validates :timeElapsed, presence: true
end
