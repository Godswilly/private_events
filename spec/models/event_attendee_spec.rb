require 'rails_helper'

RSpec.describe EventAttendee, type: :model do
  before :each do
    @user = User.create!(username: 'gurbuz', email: 'gurbuzertunga@gmail.com', password: '123456')
    @event = @user.events.create!(date: '12.10.2020', description: 'This is a new Event')
    @event_attendees = EventAttendee.create(event_attended_id: @event.id, attendee_id: @user.id)
  end

  context 'can have an attendee' do
    it 'can be created' do
      expect(EventAttendee.first.attendee).to eq(@user)
    end

    it 'can have events that will be attended to' do
      expect(EventAttendee.first.event_attended).to eq(@event)
    end
  end
end
