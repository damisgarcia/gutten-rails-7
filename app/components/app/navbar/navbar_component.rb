# frozen_string_literal: true

module App
  module Navbar
    class NavbarComponent < ViewComponent::Base
      renders_many :items, "App::Navbar::NavbarItemComponent"
      renders_one :navbar_end

      def initialize(title, fixed = false)
        @title = title
        @fixed = fixed
      end
    end
  end
end
