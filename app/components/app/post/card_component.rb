class App::Post::CardComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end
end
