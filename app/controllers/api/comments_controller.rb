class Api::CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.where(post_id: @post.id)

    render json: @comments
  end

  def create
    @comment = Comment.new(params.require(:comment).permit(:text))
    @comment.post = Post.find(params[:post_id])
    @comment.author = current_user

    if @comment.save
      render json: @comment
    else
      render json: @comment.errors
    end
  end
end
