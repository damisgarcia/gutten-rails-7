# frozen_string_literal: true

require "factory_bot"
require "faker"

FactoryBot.define do
  factory :user do
    email { nil }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    after(:build) do |post|
      post.email = Faker::Internet.email(name: "#{post.first_name} #{post.last_name}", domain: "mail.com")
    end
  end
end
