class AddColleagueIdToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :colleague_id, :integer
  end
end
