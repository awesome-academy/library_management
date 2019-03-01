class User < ApplicationRecord
  has_many :request
  has_many :likes
  has_many :reviews
  has_many :follows

  enum role: {user: 0, admin: 1}
  enum gender: {male: 0, female: 1}
end
