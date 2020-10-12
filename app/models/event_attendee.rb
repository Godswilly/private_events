class EventAttendee < ApplicationRecord
  belongs_to :attendee, class_name: 'User', foreign_key: 'attendee_id'
  belongs_to :event_attendee, class_name: 'Event', foreign_key: 'event_attended_id'
end
