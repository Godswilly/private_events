class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def index
    @event = Event.all
  end

  def create
    @event = current_user.events.build(event_params)
  end

  def show
  end

  private
  
  def set_event
    @event = event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:description, :user_id, :date)
  end
end
