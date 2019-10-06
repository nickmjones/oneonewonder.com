class Colleague < ApplicationRecord
  belongs_to :team

  def full_name
    "#{fname} #{lname}"
  end
end
