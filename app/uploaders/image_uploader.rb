class ImageUploader < Uploader::Base
#   # include CarrierWave::MiniMagick
  storage :gcloud
#
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mount_gcloud_uploader}/#{model.id}"
  # end
#
#   # Process files as they are uploaded:
#   # process scale: [200, 300]
#   #
#   # def scale(width, height)
#   #   # do something
#   # end
#   # process resize_to_fit: [50, 50]
#
#   # version :thumb do
#   #   process resize_to_fit: [50, 50]
#   # end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
