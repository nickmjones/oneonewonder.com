class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @team = Team.find(current_user.id)
    @members = @team.colleagues.all
    @events = Event.where(:user_id => current_user.id).order('date ASC')
  end

end
