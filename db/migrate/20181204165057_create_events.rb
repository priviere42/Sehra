class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :name
      t.text :description
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
