FactoryGirl.define do
  factory :board do
    sequence(:moderator_id) { |i| i }
    sequence(:name) { |n| "Board #{n}" }
  end
end