require "rails_helper"

RSpec.describe Image, type: :model do
  describe "Associations" do
    it "belongs to tour" do
      should belong_to :tour
    end
  end
end
