class Message < ApplicationRecord
  belongs_to :user
  belongs_to :request
  mount_uploader :image, ImageUploader
end
