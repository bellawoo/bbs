FactoryGirl.define do
  factory :post do
    association :author, factory: :user
    board
    sequence(:title) { |i| "Post #{i}"}
    body "After calling FactoryGirl.lint..."
  end
end