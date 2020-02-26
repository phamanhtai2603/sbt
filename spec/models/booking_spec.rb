require "rails_helper"

RSpec.describe Booking, type: :model do
  describe "Associations" do
    it "belongs to account" do
      should belong_to :account
    end

    it "belongs to review" do
      should belong_to :tour
    end
  end

  describe "Validates" do
    it {should validate_presence_of(:account_id)}
    it {should validate_presence_of(:tour_id)}
    it {should validate_presence_of(:amount)}
    it {should validate_numericality_of(:amount)}
  end

end
