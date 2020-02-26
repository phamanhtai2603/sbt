FactoryGirl.define do
  factory :booking do
    account_id     {create(:account).id }
    tour_id         {create(:tour).id}
    amount  {3}
  end
end
