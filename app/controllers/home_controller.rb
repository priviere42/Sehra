class HomeController < ApplicationController

  def index
    @cities = City.order("RANDOM()").limit(2)
    @places = Place.all
    @events = Event.all
  end

end
