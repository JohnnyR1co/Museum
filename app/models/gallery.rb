class Gallery < ApplicationRecord
  belongs_to :division
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
  mount_uploader :pdf, PdfUploader
end
