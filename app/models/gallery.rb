class Gallery < ApplicationRecord
  belongs_to :division
  has_many :movies
  mount_uploader :icon, ImageUploader
  mount_uploaders :images, ImageUploader
end
