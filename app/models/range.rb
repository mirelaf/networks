class Range < ApplicationRecord
  belongs_to :platform

  has_many :addresses
end