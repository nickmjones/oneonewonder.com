class ChangeColorToString < ActiveRecord::Migration[6.0]
  def change
    change_column :colleagues, :color, :string
  end
end
