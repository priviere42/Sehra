class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
  	puts current_user.first_name
    @city = City.find(params[:id])
  end
end
