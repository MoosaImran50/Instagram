class Post < ApplicationRecord

  mount_uploaders :image, ImageUploader
  serialize :image, JSON

  belongs_to :account
  has_many :likes
  has_many :comments

  default_scope { order created_at: :desc }

end
