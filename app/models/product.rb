class Product < ApplicationRecord
  belongs_to :warehouse
  validates :name, :price, :description, :quantity, presence: true
end
