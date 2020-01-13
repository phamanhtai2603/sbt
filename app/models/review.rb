class Review < ApplicationRecord
  belongs_to :tours, dependent: :destroy
  belongs_to :accounts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end
