FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    mobile_number { Faker::PhoneNumber.cell_phone }
  end
end

# FactoryBot.define do
#   factory :user do
#     first_name { 'John' }
#     last_name { 'Doe' }
#     email { 'john@email_provider.com' }
#     mobile_number { 8675309 }
#   end
# end
