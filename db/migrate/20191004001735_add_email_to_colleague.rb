class AddEmailToColleague < ActiveRecord::Migration[6.0]
  def change
    add_column :colleagues, :email, :text
  end
end
