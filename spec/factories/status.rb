FactoryGirl.define do
  factory :status do
    content Faker::Lorem.sentence
    show_date Date.today
  end
end

