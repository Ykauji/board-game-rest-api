# spec/models/user_spec.rb
require 'rails_helper'

# Test suite for the User model
RSpec.describe User, type: :model do
  # Association test
  # ensure User model has a 1:m relationship with the GameSession model
  it { should have_many(:GameSession) }
  # Validation tests
  # Here make tests for user_id length, uniqueness etc... 
  it { should validate_presence_of(:user_id) }

end