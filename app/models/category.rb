class Category < ApplicationRecord
  has_many :books

  scope :sort_by_name, ->{order name: :asc}
end
