class Post < ApplicationRecord

  mount_uploaders :image, ImageUploader
  serialize :image, JSON

  belongs_to :account
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  default_scope { order created_at: :desc }

end
