require 'rails_helper'

RSpec.feature "CreateEvents", type: :feature do
  before(:each) do
    @user = User.create!(username: 'gurbuz', email: 'gurbuzertunga@gmail.com', password: '123456', password_confirmation: '123456')
  end

  scenario 'they can sign up and create events' do
    visit new_user_registration_path
    fill_in 'username', with: 'gurbuz'
    fill_in 'email', with: 'example@gmail.com'
    fill_in 'password', with: '123456'
    fill_in 'password_confirmation', with: '123456'
    click_button 'Sign up'
    expect(page).to have_content('Events List')
    visit events_new_path
    expect(page).to have_content('New Event')
    fill_in 'event[description]', with: 'event starting time'
    fill_in 'event[date]', with: '2020-10-15'
    click_button 'CREATE A NEW EVENT'
    expect(page).to have_content('event starting time')
  end

end
