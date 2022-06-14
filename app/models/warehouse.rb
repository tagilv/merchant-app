class Warehouse < ApplicationRecord
  validates :name, presence: true
  validates :location, inclusion: { in: %w(London Birmingham Leeds),
    message: "%{value} is not a valid location" }
  has_many :products, dependent: :destroy

  # The below is for testing this model from file warehouse_test.rb
  def name_capitalized
    "#{name.capitalize}"
  end
end
