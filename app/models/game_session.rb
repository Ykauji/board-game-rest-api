class GameSession < ApplicationRecord
  belongs_to :User, class_name: "User", foreign_key: :user_id
  belongs_to :Game, class_name: "Game", foreign_key: :game_id
end
