class Book < ApplicationRecord
  validates :title, presence: true
  validates :bosy, presence: true
end
