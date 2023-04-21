class Address < ApplicationRecord
  belongs_to :range
  belongs_to :device

  enum status: { free: 0, reserved: 1, assigned: 2 }
end