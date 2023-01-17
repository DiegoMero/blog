class Post < ApplicationRecord
  has_many :likes, foreign_key: "postId"
  has_many :comments, foreign_key: "postId"
  belongs_to :user, foreign_key: "authorId"
end