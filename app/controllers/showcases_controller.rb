class ShowcasesController < ApplicationController
  def new
    @showcase = Showcase.new
  end

  def create
    @showcase = Showcase.new(showcase_params)
    if @showcase.save
      # Handle media creation here if necessary
      redirect_to @showcase, notice: 'Showcase was successfully created.'
    else
      render :new
    end
  end

  private

  def showcase_params
    params.require(:showcase).permit(:title, :description, :location, :media_attributes => [:file_type, :file_path, :title, :description, :location_link, :event_date, :event_ticket_price])
  end
end
