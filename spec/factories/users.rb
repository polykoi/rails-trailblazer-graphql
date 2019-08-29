# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    password { 'Password1' }

    trait :with_boards do
      after(:create) do |user|
        create_list(
          :board,
          user: user,
        )
      end
    end
  end
end
