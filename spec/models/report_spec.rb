require 'rails_helper'

RSpec.describe Report, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
  describe 'validations' do
    it { should validate_presence_of(:symptoms) }
  end
end