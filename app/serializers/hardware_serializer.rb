class HardwareSerializer < ActiveModel::Serializer

  attributes :id, :name, :description, :price, :purpose, :owner_id, :renter_id
end
