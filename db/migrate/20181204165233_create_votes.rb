class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :value, default: false

      t.timestamps
    end
  end
end
