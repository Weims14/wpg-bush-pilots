class Goaltender < ApplicationRecord
  def gp
    if wins.blank? || loses.blank? || otl.blank?
      0
    else
      wins + loses + otl
    end
  end

  def winpercent
    if wins.blank? || gp.blank?
      0
    else
    winpercent = wins.to_f / gp.to_f
    winpercent.round(3)
    end
  end

  def gaa
    if gp.blank? || ga.blank?
      0
    else
    gaa = ga.to_f / gp.to_f
    gaa.round(2)
    end
  end
end
