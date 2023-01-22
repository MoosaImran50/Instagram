class Like < ApplicationRecord
  belongs_to :post
  belongs_to :account
  validates_uniqueness_of :post_id, scope: :account_id

  after_create :increment_post_like_counter
  after_destroy :decrement_post_like_counter

  private

  def increment_post_like_counter
    Post.find(self.post_id).increment(:total_likes_count).save
  end

  def decrement_post_like_counter
    Post.find(self.post_id).decrement(:total_likes_count).save
  end

end
