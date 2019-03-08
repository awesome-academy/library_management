class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :category
  has_many :request_details
  has_many :follows
  has_many :likes
  has_many :reviews
  has_many :author_books
  has_many :authors, through: :author_books

  mount_uploader :image, PictureUploader

  delegate :name, to: :category, prefix: :category
  delegate :name, to: :publisher, prefix: :publisher

  scope :newest, ->{order :created_at}
  accepts_nested_attributes_for :author_books

  def writers
    authors.map(&:name).join(", ")
  end
end
