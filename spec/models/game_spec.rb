# spec/models/game_spec.rb
require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Game, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:GameSession) }
  # Validation tests
  

end