class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  mount_uploader :image, ImageUploader
  validates :user_id, presence: true
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :content, presence: true, length: { minimum: 10 }
  validate  :image_size

  private

  def image_size
      if image.size > 5.megabytes
        errors.add(:image, "should be less than 5MB")
      end
    end
end
