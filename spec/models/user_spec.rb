# spec/models/user_spec.rb
require 'rails_helper'

# Test suite for the User model
RSpec.describe User, type: :model do
  # Association test
  # ensure User model has a 1:m relationship with the GameSession model
  it { should have_many(:GameSession) }
  # Validation tests
  # Here make tests for user_id length, uniqueness etc... 

  describe '#username' do
   it { should validate_presence_of(:username) }
   it { should validate_length_of(:username).is_at_least(3).with_message(/is too short/) }
  end

  describe '#kill_count' do 
   it { should validate_inclusion_of(:kill_count).in_range(0..99999999999).with_message(/must be within 0 >= x <= 99999999999/) }
  end

end