class EventAttendeesController < ApplicationController
  def join
    @event_attendee = EventAttendee.new(event_attended_id: params[:id], attendee_id: current_user.id)
    @event_attendee.save

    redirect_to events_path
  end
end