class WeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :dps, :damage, :rpm, :mag, :level, :favorite

  def dps
    object.dps
  end
end
