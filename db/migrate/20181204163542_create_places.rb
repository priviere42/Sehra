class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :image_url
      t.vote :boolean

      t.timestamps
    end
  end
end
