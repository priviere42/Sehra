class HomeController < ApplicationController
  def index
    @cities = City.all
    @places = Place.all
    @events = Event.all
  end
end
