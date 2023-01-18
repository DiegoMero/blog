class Like < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  def update_likes_counter
    post.update(likesCounter: post.likes.count)
  end
end
