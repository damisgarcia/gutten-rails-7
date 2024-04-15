# frozen_string_literal: true

class User < ApplicationRecord
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
end
