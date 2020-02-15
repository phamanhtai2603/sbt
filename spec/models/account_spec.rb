require 'rails_helper'

RSpec.describe Account, type: :model do
  describe "validations" do
    it { should validate_presence_of :email }
    it {is_expected.to validate_length_of(:email).is_at_most(50)}
  end
end
