class Client < ApplicationRecord
  has_many :deliveries
  has_many :pickups

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :rut, presence: true
end
