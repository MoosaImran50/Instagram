class Post < ApplicationRecord

  mount_uploaders :image, ImageUploader
  serialize :image, JSON

  belongs_to :account
  has_many :likes
  has_many :comments

  before_create :set_active

  default_scope { order created_at: :desc }

  scope :active, -> { where active: true }

  private

  def set_active
    self.active = true
  end
end
