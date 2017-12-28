class MainImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
