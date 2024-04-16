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
#  role                   :integer          default("registerable")
#  status                 :integer          default("active")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  include UserProfileConcern
  include RansackConcern

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum status: {
    active: 0,
    inactive: 1,
    inappropriate_behavior: 2,
    suspicious_behavior: 3
  }

  enum role: {
    registerable: 0,
    admin: 1,
    publisher: 2,
    company: 3
  }

  enum gender: {
    female: 0,
    male: 1,
    other: 2
  }


  def name
    "#{first_name} #{last_name}"
  end

  def self.ransackable_attributes(auth_object = nil)
    %w(first_name
       last_name
       email
       status
       role
       gender
       created_at)
  end
end
