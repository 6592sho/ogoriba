class Taker < ApplicationRecord
  belongs_to :gender
  belongs_to :place
  belongs_to :user
  mount_uploader :image, ImageUploader
end
