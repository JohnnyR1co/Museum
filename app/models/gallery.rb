class Gallery < ApplicationRecord
  belongs_to :division
  mount_uploader :icon, ImageUploader
  mount_uploaders :videos, VideoUploader
  mount_uploaders :images, ImageUploader
end
