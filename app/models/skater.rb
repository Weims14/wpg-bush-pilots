class Skater < ApplicationRecord
  # def initialize
  #   goals   ||= 0
  #   assists ||= 0
  # end
  def points
    if goals.blank? || assists.blank?
      0
    else
      goals + assists
    end
  end
end
