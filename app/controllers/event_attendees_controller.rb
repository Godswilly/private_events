class EventAttendeesController < ApplicationController
  def join
    @event_attendee = EventAttendee.new(event_id: params[:id], user_id: current_user.id)
    @event_attendee.save
  end
end