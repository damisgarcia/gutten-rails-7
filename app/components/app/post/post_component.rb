# frozen_string_literal: true

module App
  module Post
    class PostComponent < ViewComponent::Base
      def initialize(post:)
        @post = post
      end
    end
  end
end
