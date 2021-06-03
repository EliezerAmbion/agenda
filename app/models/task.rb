class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {maximum: 20}
  validates :description, presence: true, length: {maximum: 50}

  belongs_to :category
end
