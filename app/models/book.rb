class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  belongs_to :publisher
  belongs_to :category
  has_many :request_details
  has_many :follows
  has_many :likes
  has_many :reviews
end
