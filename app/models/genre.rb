class Genre < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :name, length: { maximum: 15 }
end
