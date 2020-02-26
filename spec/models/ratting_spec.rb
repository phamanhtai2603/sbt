require "rails_helper"

RSpec.describe Ratting, type: :model do
  describe "Associations" do
    it "belongs to account" do
      should belong_to :account
    end
  end

end
