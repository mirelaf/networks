class AddPlatformToDevices < ActiveRecord::Migration[6.0]
  def change
    add_reference :devices, :platform, index: true, foreign_key: true
  end
end
