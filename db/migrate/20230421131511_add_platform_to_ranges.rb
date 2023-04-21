class AddPlatformToRanges < ActiveRecord::Migration[6.0]
  def change
    add_reference :ranges, :platform, index: true, foreign_key: true
  end
end
