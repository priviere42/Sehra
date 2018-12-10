class EventsController < ApplicationController

  def index
    @events = Event.where(:active => true)
  end

  def show
    @event = Event.find(params[:id])
    @city_of_event = City.find(Place.find(Event.find(params[:id]).place_id).id)
    @place_of_event = Place.find(Event.find(params[:id]).place_id)
  end

  def events_params
    params.require(:events).permit(:picture1)
    params.require(:events).permit(:picture2)
    params.require(:events).permit(:picture3)
  end

  def create

  	@event_new = Event.new(
      name: params[:new][:name], 
      description: params[:new][:description], 
      place_id: Place.find_by(city_id: params[:new][:city_id]).id, 
      picture1: params[:new][:picture1], 
      picture2: params[:new][:picture2], 
      picture3: params[:new][:picture3]
    )
    
    if @event_new.save && params[:new][:picture1].present?
      flash[:notice] = "Event created successfully"
      redirect_to root_path
    else 
      flash[:notice] = "Please try again"
  		redirect_to events_new_path
  	end

  end
end
