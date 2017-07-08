class Book < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :categories
  has_many :covers
  has_many :comments

  validates :title, presence: true, length: {in: 2..50}
  validates :description, presence: true, length: {in: 2..300}
  validates :image, presence: true
  # validates :categories, presence: true
  # validates :authors, presence: true
  validates :agreement, presence: true

  has_attached_file :image,
                    styles: { medium: '300x300>', thumb: '100x100>'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, 
                    content_type: ['image/jpeg', 'image/gif', 'image/png']
end
