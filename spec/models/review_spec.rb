require "rails_helper"

RSpec.describe Review, type: :model do
  describe "Associations" do
    it "belongs to account" do
      should belong_to :account
    end

    it "belongs to review" do
      should belong_to :tour
    end

    it "has many comments" do
      should have_many :comments
    end

    it "has many likes" do
      should have_many :likes
    end
  end

end
