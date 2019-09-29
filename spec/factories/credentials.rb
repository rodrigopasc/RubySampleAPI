FactoryBot.define do
  factory :credential do
    username { 'test' }
    password { 'qwerty' }
    password_confirmation { 'qwerty' }
  end
end
