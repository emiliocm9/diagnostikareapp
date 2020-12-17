require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:appointments) }
    it { should have_many(:reports) }
    it { is_expected.to validate_presence_of(:email) }
  end
  describe 'db columns' do
    it { should have_db_column(:id) }
    it { should have_db_column(:email) }
    it { should have_db_column(:reset_password_sent_at) }
    it { should have_db_column(:remember_created_at) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end
  it 'is db authenticable' do
    user = User.create(
      email: 'test@example.com',
      password: 'password123',
      password_confirmation: 'password123'
    )
    expect(user.valid_password?('password123')).to be_truthy
  end
end
