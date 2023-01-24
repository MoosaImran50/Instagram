class RemoveActiveFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :active
  end
end
