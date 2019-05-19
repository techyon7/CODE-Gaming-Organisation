class Hardware < ApplicationRecord
  belongs_to :users, optional: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :purpose, presence: true
end
