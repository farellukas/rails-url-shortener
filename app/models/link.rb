class Link < ApplicationRecord
  belongs_to :user

  validates :source, presence: true
  validates :slug, presence: true, uniqueness: true
end
