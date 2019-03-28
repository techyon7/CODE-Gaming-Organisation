class CreateHardwares < ActiveRecord::Migration[5.1]
  def change
    create_table :hardwares do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :type
      t.string :owner_id
      t.string :renter_id

      t.timestamps
    end
  end
end
