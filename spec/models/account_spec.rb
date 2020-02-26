require "rails_helper"

RSpec.describe Account, type: :model do
  describe "Associations" do
    it "has many tours" do
      association = described_class.reflect_on_association(:tours)
      expect(association.macro).to eq :has_many
    end

    it "has many likes" do
      association = described_class.reflect_on_association(:likes)
      expect(association.macro).to eq :has_many
    end

    it "has many comments" do
      association = described_class.reflect_on_association(:comments)
      expect(association.macro).to eq :has_many
    end

    it "has many rattings" do
      association = described_class.reflect_on_association(:rattings)
      expect(association.macro).to eq :has_many
    end

    it "has many reviews" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.macro).to eq :has_many
    end

    it "has many bookings" do
      association = described_class.reflect_on_association(:bookings)
      expect(association.macro).to eq :has_many
    end

  end

  describe "Validates" do
    it {should validate_presence_of(:email)}
    it {should validate_length_of(:email).is_at_most(Settings.email_in_users_max) }

    it {should validate_length_of(:password).is_at_least(Settings.password_min)}
    it {should validate_length_of(:password).is_at_least(Settings.password_min).on(:reset_password)}
  end
end
