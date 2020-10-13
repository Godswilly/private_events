class Event < ApplicationRecord
  belongs_to :user
  has_many :event_attendee, foreign_key: 'event_attended_id'
  has_many :attendees, through: 'event_attendee'
end
