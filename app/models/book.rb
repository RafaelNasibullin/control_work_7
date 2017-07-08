class Book < ApplicationRecord
  belongs_to :profile
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :categories
end
