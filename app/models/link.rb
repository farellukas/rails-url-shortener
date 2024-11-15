class Link < ApplicationRecord
  has_and_belongs_to_many :users

  validates_presence_of :source
  validates_uniqueness_of :source, :short_url

  before_create :generate_short_url
  private
    def generate_short_url
      self.short_url = SecureRandom.hex(3)
    end
end
