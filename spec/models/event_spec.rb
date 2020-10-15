require 'rails_helper'

RSpec.describe Event, type: :model do
  before :each do
    @user = User.create!(username: 'gurbuz', email: 'gurbuzertunga@gmail.com', password: '123456')
    @event = @user.events.create!(date: '12.10.2020', description: 'This is a new Event')
    @event_attendees = EventAttendee.create(event_attended_id: @event.id, attendee_id: @user.id)
  end

  context 'has associations' do
    it 'can be created' do
      expect(Event.first).to eq(@event)
    end

    it 'can have creators' do
      expect(Event.first.user).to eq(@user)
    end

    it 'can have attendees' do
      expect(Event.first.attendees.first).to eq(@user)
    end
  end
end
