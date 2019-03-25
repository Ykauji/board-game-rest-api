class GameSession < ApplicationRecord
  belongs_to :User, class_name: "User", foreign_key: :user_id
  belongs_to :Game, class_name: "Game", foreign_key: :game_id

  validates :game_id, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :game_id , case_sensitive: true}
end
