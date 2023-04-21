class CreateRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :ranges do |t|
      t.integer :range_start
      t.integer :range_end

      t.timestamps
    end
  end
end
