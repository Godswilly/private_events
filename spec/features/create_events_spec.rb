require 'rails_helper'

RSpec.feature "CreateEvents", type: :feature do
  before(:each) do
    @user = User.new(email: 'example@gmail.com', password: '123456')
    @user.save
  end

  scenario 'they can sign in and create events' do
    visit new_user_session_path
    fill_in 'email', with: 'example@gmail.com'
    fill_in 'password', with: '123456'
    click_button 'Log in'
    expect(page).to have_content('example@gmail.com')
    visit events_new_path
    expect(page).to have_content('New Event')
    fill_in 'event[description]', with: 'event starting time'
    fill_in 'event[date]', with: '2020-10-15'
    click_button 'CREATE A NEW EVENT'
    expect(page).to have_content('event starting time')
  end

end
