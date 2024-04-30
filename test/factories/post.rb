# frozen_string_literal: true

require "factory_bot"
require "faker"

FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    author { nil }
    after(:build) do |post|
      post.body = Faker::Lorem.paragraph(sentence_count: 25)
    end
  end
end
