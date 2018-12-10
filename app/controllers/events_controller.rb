class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @city_of_event = City.find(Place.find(Event.find(params[:id]).place_id).id)
    @place_of_event = Place.find(Event.find(params[:id]).place_id)
  end

  def events_params
    params.require(:events).permit(:task, :picture1)
    params.require(:events).permit(:task, :picture2)
    params.require(:events).permit(:task, :picture3)
  end

end
