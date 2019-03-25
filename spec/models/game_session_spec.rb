# spec/models/game_spec.rb
require 'rails_helper'

# Test suite for the Todo model
RSpec.describe GameSession, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should belong_to(:User) }
  it { should belong_to(:Game)}

  describe 'with validation' do
  FactoryBot.build(:User)
  FactoryBot.build(:Game)
  FactoryBot.build(:GameSession)

  

  it { is_expected.to validate_presence_of(:user_id) }
  it { is_expected.to validate_presence_of(:game_id) }
  it { is_expected.to validate_uniqueness_of(:user_id).scoped_to(:game_id) }
  end


  # Validation tests

  
end