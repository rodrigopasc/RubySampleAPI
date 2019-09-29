class Product < ApplicationRecord
  validates :name, presence: true

  scope :processed, -> { where(processed: true) }
  scope :unprocessed, -> { where(processed: false) }
end
