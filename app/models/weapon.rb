class Weapon < ApplicationRecord
  def dps
    (self.damage * (self.rpm / 60)) / self.mag
  end
end
