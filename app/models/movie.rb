class Movie < ApplicationRecord
  belongs_to :gallery
  mount_uploader :icon, ImageUploader
  mount_uploader :video_file, VideoUploader
  before_create :set_defaults

  def set_defaults
      self.icon = "default.jpg" if icon.nil?
  end
end
