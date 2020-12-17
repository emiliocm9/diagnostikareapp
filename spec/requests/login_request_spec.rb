require 'rails_helper'

RSpec.describe 'Months', type: :request do
  before do
    visit 'http://localhost:3000/users/sign_up'
    fill_in 'user_email', with: 'test@example.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on(class: 'button')
    visit 'http://localhost:3000/users/sign_in'
    fill_in 'email', with: 'test@example.com'
    fill_in 'password', with: '123456'
    click_on 'Log in'
  end

  describe 'Login' do
    it 'returns http success' do
      visit root_path
      expect(page).to have_content('welcome')
    end
  end
end