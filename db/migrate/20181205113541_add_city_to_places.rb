class AddCityToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :city, foreign_key: true
  end
end
