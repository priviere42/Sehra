class HomeController < ApplicationController

  def index
    @cities = City.order("RANDOM()").limit(3)
    @places = Place.all
    @events = Event.all
  end

end
