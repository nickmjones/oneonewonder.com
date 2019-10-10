class Event < ApplicationRecord
  belongs_to :user
  extend FriendlyId
  friendly_id :uuid, use: :slugged

  def start_time
    self.date
  end
end
