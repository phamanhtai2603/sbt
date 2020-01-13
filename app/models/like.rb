class Like < ApplicationRecord
  belongs_to :reviews, dependent: :destroy
  belongs_to :accounts, dependent: :destroy
end
