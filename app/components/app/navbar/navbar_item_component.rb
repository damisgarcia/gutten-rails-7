# frozen_string_literal: true

module App
  module Navbar
    class NavbarItemComponent < ViewComponent::Base
      def initialize(title:, to:, index:)
        @title = title
        @to = to
        @index = nil
      end
    end
  end
end
