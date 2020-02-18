class Division < ApplicationRecord
  mount_uploader :icon, ImageUploader
  has_many :galleries, dependent: :destroy
end
