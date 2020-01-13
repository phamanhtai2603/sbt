class Booking < ApplicationRecord
  belongs_to :tours, dependent: :destroy
  belongs_to :accounts, dependent: :destroy
end
