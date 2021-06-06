class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: {scope: :category}, length: {maximum: 20}
  validates :description, presence: true, length: {maximum: 45}

  belongs_to :category
end
