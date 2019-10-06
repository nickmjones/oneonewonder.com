class ChangeEventTitleToString < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :title, :string
  end
end
