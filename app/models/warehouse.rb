class Warehouse < ApplicationRecord
  validates :name, presence: true
  validates :location, inclusion: { in: %w(London Birmingham Leeds),
    message: "%{value} is not a valid location" }
end
