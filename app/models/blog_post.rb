class BlogPost < ApplicationRecord
  mount_uploader :banner_image, BannerImageUploader
end
