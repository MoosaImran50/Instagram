class AddDefaultValueToLikesAndComments < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :total_likes_count, :integer, :default => 0
    change_column :posts, :total_comments_count, :integer, :default => 0
  end
end
