class AddGoalToColleague < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :colleague_id, :bigint
  end
end
