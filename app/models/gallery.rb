class Gallery < ApplicationRecord
  belongs_to :division
  has_many :movies
  has_many :pdfs
  mount_uploader :icon, ImageUploader
  mount_uploaders :images, ImageUploader
end
