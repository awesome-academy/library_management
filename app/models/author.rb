class Author < ApplicationRecord
  has_many :follows
  has_many :author_books
  has_many :books, through: :author_books

  mount_uploader :avatar, PictureUploader

  scope :newest, ->{order name: :ASC}
end
