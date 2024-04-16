# frozen_string_literal: true
module UserProfileConcern extend ActiveSupport::Concern
  included do
    has_one_attached :avatar do |attachable|
      attachable.variant :thumb, resize_to_limit: [112, 112]
      attachable.variant :medium, resize_to_limit: [600, 600]
    end
  end
end
