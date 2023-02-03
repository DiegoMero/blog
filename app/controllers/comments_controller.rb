class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @user = Post.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params.require(:comment).permit(:text))
    @comment.author = current_user
    @comment.post = @post

    if @comment.save
      redirect_to user_post_path(@user, @post)
    else
      render :new
    end
  end

  def destroy
    @comments = Comment.find(params[:id])
    @comments.destroy
    redirect_to user_post_url
  end
end
