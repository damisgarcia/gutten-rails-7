# frozen_string_literal: true

class User < ApplicationRecord
  include ::RansackConcern

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
