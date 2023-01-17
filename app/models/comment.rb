class Comment < ApplicationRecord
  belongs_to :post, foreign_key: "postId"
  belongs_to :user, foreign_key: "authorId"

  def update_comments_counter
    post.update(commentsCounter: post.comments.count)
  end
end