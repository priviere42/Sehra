class HomeController < ApplicationController
  def index
    @cities = City.all
    @events = Event.all
  end
end
