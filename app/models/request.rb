class Request < ApplicationRecord
  has_many :requests_details
  belongs_to :user

  enum status: {pending: 0, approved: 1, cancel: 2, reject: 3}
end
