class AddRangeToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :range, index: true, foreign_key: true
  end
end
