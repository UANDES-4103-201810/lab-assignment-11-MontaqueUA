FactoryBot.define do
  factory :user do
    username"nameofuser"
    email "example@email.com"
    password "password123"
  end
# Add other factories in here
  factory :message do
    user_id 1
    date "2-5-2018"
    content "Hello, what are you doing?"
  end
end