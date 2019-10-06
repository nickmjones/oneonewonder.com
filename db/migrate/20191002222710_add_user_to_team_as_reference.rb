class AddUserToTeamAsReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :user, index: true
  end
end
