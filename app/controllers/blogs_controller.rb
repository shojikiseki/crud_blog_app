class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to '/blogs'
  end

  def show
    @blog = Blog.find(params[:id])
  end

  # 以下のコードを追加
  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to '/blogs'
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to '/blogs'
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

end
