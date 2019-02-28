class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to blogs_path
  end

  def show
  end

  def edit
  end

  def update
    @blog.update(blog_params)
    redirect_to blogs_path
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
