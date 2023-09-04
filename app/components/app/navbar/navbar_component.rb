# frozen_string_literal: true

class App::Navbar::NavbarComponent < ViewComponent::Base
  renders_many :items, 'App::Navbar::NavbarItemComponent'

  def initialize(title)
    @title = title
  end
end
