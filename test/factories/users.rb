# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           not null
#  gender                 :integer
#  last_name              :string           not null
#  phone                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer          default("registered")
#  status                 :integer          default("active")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
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
