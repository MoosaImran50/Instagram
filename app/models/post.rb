class Post < ApplicationRecord
  mount_uploaders :image, ImageUploader
  serialize :image, JSON

  belongs_to :account
  before_create :set_active

  scope :active, -> { where active: true }

  def set_active
    self.active = true
  end
end
