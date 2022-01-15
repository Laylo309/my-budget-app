require 'rails_helper'

RSpec.feature 'Splash Page', type: :feature do
  describe 'Splash page for a new user' do
    before do
      visit root_path
    end

    scenario 'User can see login button' do
      click_link 'LOGIN'
      expect(current_path).to eq(new_user_session_path)
    end

    scenario 'User can see sign up button' do
      click_link 'SIGN UP'
      expect(current_path).to eq(new_user_registration_path)
    end
  end
end