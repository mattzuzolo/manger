class Continent < ApplicationRecord

  has_many :nations
  has_many :restaurants, through: :nations

end
