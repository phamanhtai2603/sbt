require "rails_helper"

RSpec.describe Category, type: :model do
  describe "Associations" do
    it "has many comments" do
      should have_many :tours
    end
  end

  describe "Validates" do
    it {should validate_presence_of(:name)}
    it {should validate_length_of(:name).is_at_most(140) }
  end

end
