class Article < ApplicationRecord
  attr_accessor :image
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :text, presence: true
  mount_uploader :image, ImageUploader
end
