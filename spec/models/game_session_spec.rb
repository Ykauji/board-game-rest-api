# spec/models/game_spec.rb
require 'rails_helper'

# Test suite for the Todo model
RSpec.describe GameSession, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should belong_to(:User) }
  it { should belong_to(:Game) }

  # Validation tests

  # FINALLY NO ERROR, BEEN WORKING ON THIS FOR 5 HOURS!!!!111
  let 'potato' do
    GameSession = build(:GameSession)
    User = build(:User)
    Game = build(:Game)
    it { should validate_uniqueness_of(:user_id).scoped_to(:game_id) }
  end

end

   
   