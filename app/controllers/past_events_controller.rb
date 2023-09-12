class PastEventsController < ApplicationController
  def index
    @past_events = PastEvent.all
  end
end
