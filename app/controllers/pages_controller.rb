class PagesController < ApplicationController
  def home
    @projects = Project.all
    @posts = BlogPost.all
  end
end
