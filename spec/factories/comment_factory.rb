FactoryBot.define do
  factory :comment do
    user_id 1
    body "this is a comment"
    product_id 1
    rating 4
  end
end
