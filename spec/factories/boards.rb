# frozen_string_literal: true

FactoryBot.define do
  factory :board do
    name { FFaker::Name.first_name }
    description { FFaker::HipsterIpsum.sentence }

    trait :with_statuses do
      after(:create) do |board|
        create_list(
          :status,
          board: board,
        )
      end
    end
  end
end
