require "rails_helper"

RSpec.describe ApplicationHelper do
  describe "#full_title" do
    it "return expect title with blank params" do
      expect(helper.full_title nil).to eq I18n.t "base.title"
    end

    it "return expect title with present params" do
      expect(helper.full_title "test rspec").to eq("test rspec|" << I18n.t("base.title"))
    end
  end
end
