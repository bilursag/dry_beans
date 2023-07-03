class Delivery < ApplicationRecord
  belongs_to :trip
  belongs_to :client

  validates :name, presence: true
  validates :trip, presence: true
  validates :client, presence: true
end
