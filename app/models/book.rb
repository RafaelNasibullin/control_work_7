class Book < ApplicationRecord
  belongs_to :profile
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :categories

  validates :title, presence: true, length: {in: 2..30}
  validates :description, presence: true, length: {in: 2..300}
  validates :categories, presence: true
  validates :authors, presence: true
  validates :agreement, presence: true
end
