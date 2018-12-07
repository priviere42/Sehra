class AddVotesCountToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :votes_count, :integer, default: 0
  end
end
