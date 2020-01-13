class Image < ApplicationRecord
  belongs_to :tours, dependent: :destroy
end
