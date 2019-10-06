class AddColorToColleague < ActiveRecord::Migration[6.0]
  def change
    add_column :colleagues, :color, :text
  end
end
