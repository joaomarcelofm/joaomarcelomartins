class Project < ApplicationRecord
  mount_uploader :thumbnail, ThumbnailUploader
  mount_uploader :main_image, MainImageUploader
end
