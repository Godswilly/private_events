class EventAttendeesController < ApplicationController
  def join
    @event_attendee = EventAttendee.new(event_id: params[:id], user_id: session[:user_id])
    @event_attendee.save
  end
end