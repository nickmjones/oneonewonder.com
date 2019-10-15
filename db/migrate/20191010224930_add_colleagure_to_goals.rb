class AddColleagureToGoals < ActiveRecord::Migration[6.0]
  def change
    add_reference :goals, :colleague, null: true, foreign_key: true
  end
end
