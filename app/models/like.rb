class Like < ApplicationRecord
  belongs_to :post, foreign_key: "postId"
  belongs_to :user, foreign_key: "authorId"

  def update_likes_counter
    post.update(likesCounter: post.likes.count)
  end
end