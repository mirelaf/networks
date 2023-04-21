class Platform < ApplicationRecord
  has_many :ranges
  has_many :devices
end