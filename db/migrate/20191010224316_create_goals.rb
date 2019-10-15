class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :goal_type
      t.string :goal_title
      t.text :goal_description
      t.boolean :goal_complete
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
