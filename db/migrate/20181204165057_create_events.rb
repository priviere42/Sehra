class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :image1
      t.string :image2
      t.string :image3
      t.text :description

      t.timestamps
    end
  end
end
