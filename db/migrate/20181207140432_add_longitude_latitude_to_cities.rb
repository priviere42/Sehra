class AddLongitudeLatitudeToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :latitude, :float
    add_column :cities, :longitude, :float
  end
end
