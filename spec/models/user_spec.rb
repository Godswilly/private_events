require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create!(username: 'gurbuz', email: 'gurbuzertunga@gmail.com', password: '123456')
    @event1 = @user.events.create(date: '10.11.2021', description: 'Movie Night')
    @event2 = @user.events.create(date: '10.11.2020', description: 'Football Match')
    @event_attended = EventAttendee.create(event_attended_id: @event1.id, attendee_id: @user.id)
  end

  context 'has associations' do
    it 'can be created' do
      expect(User.last).to eq(@user)
    end

    it 'can create events' do
      expect(User.first.events).to eq([@event1, @event2])
    end

    it 'can attend events' do
      expect(User.first.event_attended.first).to eq(@event1)
    end
  end
end
