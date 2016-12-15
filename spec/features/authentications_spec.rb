require 'rails_helper'

RSpec.feature 'Authentication', type: :feature do
  let!(:user) { create(:user) }

  feature 'Sign In' do
    background do
      visit root_path
    end

    scenario 'fails with invalid credentials', js: true do
      click_link('Login')
      click_button 'Sign in'
      expect(page).to have_text('incorrect')
    end
  end

  feature 'Sign Up' do
    background do
      visit root_path
    end

    scenario 'fails with invalid credentials', js: true do
      click_link('Signup')
      click_button 'Create user'
      expect(page).to have_text('blank')
    end
  end
end
