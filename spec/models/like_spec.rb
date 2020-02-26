require "rails_helper"

RSpec.describe Like, type: :model do
  describe "Associations" do
    it "belongs to account" do
      should belong_to :account
    end

    it "belongs to review" do
      should belong_to :review
    end
  end
end
