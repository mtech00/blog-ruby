module ApplicationHelper
  ActionView::Base.default_form_builder = FormBuilder

  def likeable_path(likeable)
    case likeable
    when Post
      post_likes_path(likeable)
    when Comment
      post_comment_likes_path(likeable.post, likeable)
    end
  end
end
