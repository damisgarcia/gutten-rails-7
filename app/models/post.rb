# frozen_string_literal: true

class Post < ApplicationRecord
  has_rich_text :body

  has_one_attached :media do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
    attachable.variant :medium, resize_to_limit: [600, 600]
  end
end
