# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  status     :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  enum status: {
    draft: 0,
    published: 1,
    archived: 2,
    inappropriate: 3
  }

  has_rich_text :body

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
    attachable.variant :medium, resize_to_limit: [600, 600]
  end

  validates :title, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w(created_at id title updated_at)
  end
end
