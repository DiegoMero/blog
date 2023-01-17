class User < ApplicationRecord
  has_many :posts, foreign_key: "authorId"
  has_many :likes, foreign_key: "authorId"
  has_many :comments, foreign_key: "authorId"

  def three_most_recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end