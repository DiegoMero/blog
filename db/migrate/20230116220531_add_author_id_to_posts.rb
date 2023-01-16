class AddAuthorIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :authorId, :integer
    add_index :posts, :authorId
    add_foreign_key :posts, :users, column: :authorId
  end
end
