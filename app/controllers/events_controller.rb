class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create
    @event = current_user.events.build(event_params)
    @event.save
  end

  def show
    @event = Event.find(params[:id])
  end

  def join
    @event_attendee = EventAttendee.new(event_attended_id: params[:id], attendee_id: session[:user_id])
    @event_attendee.save
  end

  def update
  end

  private
  
  def set_event
    @event = event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:description, :date, :user_id)
  end
end
