class Article < ApplicationRecord
  attr_accessor :image
  include GcloudStorage::Uploader

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :text, presence: true
  mount_gcloud_uploader :image
end
