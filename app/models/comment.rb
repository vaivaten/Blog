class Comment < ApplicationRecord
  belongs_to :article
  validates_presence_of :name
  validates_presence_of :comment
end
