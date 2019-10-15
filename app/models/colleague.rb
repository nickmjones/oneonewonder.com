class Colleague < ApplicationRecord
  belongs_to :team
  has_many :goals

  def full_name
    "#{fname} #{lname}"
  end
end
