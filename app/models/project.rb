class Project < ApplicationRecord
  mount_uploader :thumbnail, :main_image, AssetUploader
  attr_accessor :asset, :asset_cache, :remove_asset
end
