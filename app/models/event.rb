class Event < ApplicationRecord
  belongs_to :user
  has_many :event_attendee
end
