# encoding: utf-8
class PictureUploader < CarrierWave::Uploader::Base
  after :remove, :delete_empty_upstream_dirs

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "#{base_store_dir}/#{model.id}"
  end

  def base_store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}"
  end

  def delete_empty_upstream_dirs
    path = ::File.expand_path(store_dir, root)
    Dir.delete(path)

    path = ::File.expand_path(base_store_dir, root)
    Dir.delete(path)
    # fails if path not empty dir
  Rescue SystemCallError
    true # nothing, the dir isn't empty
  end

  process resize_to_fit: [800, 800]

  version :thumb do
    process resize_to_fill: [200, 200]
  end

  def extension_white_list
    %w[jpg jpeg gif png pdf]
  end

end
