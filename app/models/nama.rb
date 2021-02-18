class Nama < ApplicationRecord
  paginates_per 6

  validates :buyer, :description, :price, :quantity, :address, :provider, presence: true
  validates :price, :quantity, numericality: true
end
