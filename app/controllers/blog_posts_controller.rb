class BlogPostsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_blog_post, only: [:show]

  def show
  end

  private

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  end
end
