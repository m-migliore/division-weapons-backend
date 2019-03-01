class Weapon < ApplicationRecord
  def dps
    ((self.damage * (self.rpm / 60.to_f)) / self.mag).round(2)
  end
end
