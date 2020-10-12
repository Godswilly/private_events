class Event < ApplicationRecord
  belongs_to :user
  has_many :attendees, through: :event_attendee, source: :attendee
end
