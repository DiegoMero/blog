class Post < ApplicationRecord
  has_many :likes, foreign_key: "postId"
  has_many :comments, foreign_key: "postId"
  belongs_to :user, foreign_key: "authorId"

  def update_posts_counter
    user.update(postsCounter: user.posts.count)
  end

  def five_most_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end