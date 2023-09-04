# frozen_string_literal: true

module App
  module Post
    class CardComponent < ViewComponent::Base
      def initialize(post:)
        @post = post
      end
    end
  end
end
