class Publisher < ApplicationRecord
  has_many :books

  scope :newest, ->{order created_at: :DESC}
end
