class AddDefaultValueToPlaceAttribute < ActiveRecord::Migration[5.2]
  def change
    change_column :place, :vote, :boolean, default: false
  end
end
