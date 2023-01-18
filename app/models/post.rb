class Post < ApplicationRecord
  has_many :likes
  has_many :comments
  belongs_to :author, class_name: 'User'

  def five_most_recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  after_save :update_posts_counter

  private

  def update_posts_counter
    author.increment!(:postsCounter)
  end
end
