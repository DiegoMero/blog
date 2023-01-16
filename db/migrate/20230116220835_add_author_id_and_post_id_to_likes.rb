class AddAuthorIdAndPostIdToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :authorId, :integer
    add_index :likes, :authorId
    add_column :likes, :postId, :integer
    add_index :likes, :postId
    add_foreign_key :likes, :users, column: :authorId
    add_foreign_key :likes, :posts, column: :postId
  end
end
