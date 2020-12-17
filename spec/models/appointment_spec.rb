require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
  describe 'validations' do
    it { should validate_presence_of(:time) }
  end
  describe 'db columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:time) }
  end
end