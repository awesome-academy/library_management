class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :request
  has_many :likes
  has_many :reviews
  has_many :follows

  enum role: {user: 0, admin: 1}
  enum gender: {male: 0, female: 1}

  scope :newest, ->{order name: :ASC}
end
