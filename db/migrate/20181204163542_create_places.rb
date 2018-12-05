class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :image_url
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
