class Comment < ApplicationRecord
  belongs_to :comments, dependent: :destroy
  belongs_to :reviews, dependent: :destroy
end
