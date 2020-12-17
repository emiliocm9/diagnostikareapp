require 'rails_helper'

RSpec.describe Report, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
  describe 'validations' do
    it { should validate_presence_of(:symptoms) }
  end
  describe 'db columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:symptoms) }
  end
end