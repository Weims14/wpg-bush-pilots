class AlumniSkater < ApplicationRecord
  def points
    if goals.blank? || assists.blank?
      0
    else
      goals + assists
    end
  end
end
