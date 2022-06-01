class CommentsController < ApplicationController
  before_action :set_blog, only: [:create, :destroy]

  def create
    @comment = @blog.comments.create(comment_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    # エラー原因: redirect_to のリンク先が書かれていなかった
    # 修正の意図: show画面に戻れるよう追記
    redirect_to blog_path(@blog)
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :content, :blog_id)
  end
end
