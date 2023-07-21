class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      # Handle media creation here if necessary
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :media_attributes => [:file_type, :file_path, :title, :description, :location_link, :event_date, :event_ticket_price])
  end
end
