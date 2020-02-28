FactoryGirl.define do
  factory :account do
    # id            {Faker::Number.number(digits: 2)}
    name          { Faker::Name.name }
    email         { Faker::Internet.email }
    password      {123321}
    confirmed_at  { Date.today }
  end
end
