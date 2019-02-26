class BlogsController < ApplicationController

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

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to blogs_path
  end

  private

  # 以下のコードを追加
  def blog_params
    params.require(:blog).permit(:title, :content)
  end

end
