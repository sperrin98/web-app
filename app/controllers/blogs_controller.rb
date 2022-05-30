class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.new
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blogs_params)
    if @blogs.save
      redirect_to blog_path(@blog)
    else
      render :new
    end
  end

  private

  def blogs_params
    params.require(:blog).permit(:overview)
  end
end
