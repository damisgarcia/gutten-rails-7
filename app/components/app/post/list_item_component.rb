# frozen_string_literal: true

module App
  module Post
    class ListItemComponent < ViewComponent::Base
      def initialize(post:)
        @post = post
      end
    end
  end
end
