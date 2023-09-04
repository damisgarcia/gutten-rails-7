# frozen_string_literal: true

class App::Navbar::NavbarItemComponent < ViewComponent::Base
  def initialize(title:, to:, index:)
    @title = title
    @to = to
    @index = nil
  end
end
