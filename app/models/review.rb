class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  delegate :name, to: :user, allow_nil: true

  validates :content, presence: true
end
