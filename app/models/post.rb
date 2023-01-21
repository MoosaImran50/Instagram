class Post < ApplicationRecord

  mount_uploaders :image, ImageUploader
  serialize :image, JSON

  belongs_to :account
  has_many :likes

  before_create :set_active

  default_scope { order created_at: :desc }

  scope :active, -> { where active: true }

  def total_likes
    0
  end

  private

  def set_active
    self.active = true
  end
end
