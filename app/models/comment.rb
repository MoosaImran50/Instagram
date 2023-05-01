class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :account

  validates_presence_of :comment
  validates_presence_of :account_id
  validates_presence_of :post_id

  after_create :increment_post_comment_counter
  after_destroy :decrement_post_comment_counter

  private

  def increment_post_comment_counter
    Post.find(self.post_id).increment(:total_comments_count).save
  end

  def decrement_post_comment_counter
    Post.find(self.post_id).decrement(:total_comments_count).save
  end

end
