class App::Post::ListItemComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end
end
