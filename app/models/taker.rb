class Taker < ApplicationRecord
  belongs_to :gender
  belongs_to :place
  mount_uploader :image, ImageUploader
end
