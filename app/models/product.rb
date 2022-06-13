class Product < ApplicationRecord
  belongs_to :warehouse
  validates :name, :price, :description, presence: true
end
