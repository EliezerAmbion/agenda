class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :description, presence: true, length: { minimum: 5, maximum: 60 }

  has_many :tasks, dependent: :destroy
end
