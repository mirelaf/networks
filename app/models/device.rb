class Device < ApplicationRecord
  belongs_to :platform

  has_one :address
end