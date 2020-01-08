class Review < ApplicationRecord
  belongs_to :tour
  belongs_to :account
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :account
  belongs_to :tour
end
