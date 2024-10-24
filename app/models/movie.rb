class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :director
  has_one_attached :poster do |poster|
    poster.variant :thumb, resize_to_limit: [ 200, 200 ]
  end
end
