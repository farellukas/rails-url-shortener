class Link < ApplicationRecord
  validates :url, presence: true
  validates :slug, presence: true
end
