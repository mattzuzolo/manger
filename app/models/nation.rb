class Nation < ApplicationRecord

  belongs_to :continent
  has_many :restaurants

end
