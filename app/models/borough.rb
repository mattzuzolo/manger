class Borough < ApplicationRecord

  has_many :neighborhoods
  #has_many :restaurants, through: :neighborhoods

end
