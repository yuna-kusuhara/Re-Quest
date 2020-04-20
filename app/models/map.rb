class Map < ApplicationRecord
  validates :title, :coment, presence: true
end
