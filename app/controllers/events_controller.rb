class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def index
    @upcoming_events = Event.upcoming_events
    @past_events = Event.past_events
  end

  def create
    @event = current_user.events.build(event_params)
    @event.save
  end

  def show
    @event = Event.find(params[:id])
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
