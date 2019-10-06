class Team < ApplicationRecord
  belongs_to :user
  has_many :colleagues

  def team_name
    "#{nickname}"
  end
end
