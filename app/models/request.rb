class Request < ApplicationRecord
  has_many :request_users
  belongs_to :user
  has_many :messages
end
