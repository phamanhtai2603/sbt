class Tour < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :ratting, dependent: :destroy
  has_many :images, dependent: :destroy
  belongs_to :accounts, dependent: :destroy
  belongs_to :catelories, dependent: :destroy
end
