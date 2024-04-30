# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  status     :integer          default("draft")
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#
# Indexes
#
#  index_posts_on_author_id  (author_id)
#
# Foreign Keys
#
#  author_id  (author_id => users.id)
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

  belongs_to :author, class_name: "User"

  validates :title, presence: true

  def destroy
    update(status: :archived)
  end

  def self.ransackable_attributes(auth_object = nil)
    %w(id author title status created_at updated_at)
  end
end
