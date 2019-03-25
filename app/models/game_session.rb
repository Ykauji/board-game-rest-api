class GameSession < ApplicationRecord
  belongs_to :User, class_name: "User", foreign_key: :user_id
  belongs_to :Game, class_name: "Game", foreign_key: :game_id

  validates :game_id, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :game_id , case_sensitive: true}
  validates :num_kills, numericality: { only_integer: true }
  validates :total_damage_dealt, numericality: { only_integer: true }
  validates :total_healing, numericality: { only_integer: true }
end