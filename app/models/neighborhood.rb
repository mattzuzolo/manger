class Neighborhood < ApplicationRecord

  belongs_to :borough
  has_many :restaurants

end
