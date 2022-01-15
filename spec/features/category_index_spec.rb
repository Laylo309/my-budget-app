require 'rails_helper'

RSpec.feature 'Check for Categories', type: :feature do
  background do
    login_user
    visit root_path
  end

  scenario 'Should show the correct title' do
    expect(page).to have_content('Categories')
  end

  scenario 'Should show the created category' do
    expect(page).to have_content '$50.00'
  end

  scenario 'show the redirect to new category' do
    click_link 'New Category'
    expect(current_path).to eq(new_category_path)
  end
end