class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :status
      t.string :description

      t.timestamps
    end
  end
end
