class Api::CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.where(post_id: @post.id)

    render json: @comments
  end
end