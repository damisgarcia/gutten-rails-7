class App::Post::PostComponent < ViewComponent::Base
  def initialize(post:)
    @post = post
  end
end
