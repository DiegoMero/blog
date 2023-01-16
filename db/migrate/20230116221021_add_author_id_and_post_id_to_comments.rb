class AddAuthorIdAndPostIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :authorId, :integer
    add_index :comments, :authorId
    add_column :comments, :postId, :integer
    add_index :comments, :postId
    add_foreign_key :comments, :users, column: :authorId
    add_foreign_key :comments, :posts, column: :postId
  end
end
