class AddStartAndEndDatesToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :goal_start, :date
    add_column :goals, :goal_end, :date
  end
end
