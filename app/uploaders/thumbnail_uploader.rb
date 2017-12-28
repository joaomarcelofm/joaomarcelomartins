class ThumbnailUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
