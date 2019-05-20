class ChangeOwneridRenteridTypeToBigint < ActiveRecord::Migration[5.1]
  change_table :hardwares do |t|
    t.change :owner_id, 'bigint USING CAST(owner_id AS bigint)'
    t.change :renter_id, 'bigint USING CAST(renter_id AS bigint)'
  end
end
