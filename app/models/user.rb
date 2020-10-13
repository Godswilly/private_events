class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :events
  has_many :event_attendee, foreign_key: 'attendee_id'
  has_many :events_attended, through: :event_attendee, source: "attendee"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
