# frozen_string_literal: true

module App
  module Navbar
    class NavbarComponent < ViewComponent::Base
      renders_many :items, 'App::Navbar::NavbarItemComponent'

      def initialize(title)
        @title = title
      end
    end
  end
end
