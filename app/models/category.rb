class Category < ApplicationRecord
  has_many :operations
  validates :description, presence: true, uniqueness: true, allow_nil: false
end
