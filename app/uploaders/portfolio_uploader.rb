class PortfolioUploader < CarrierWave::Uploader::Base

  # change to :aws when you get a bucket name placed in .ENV
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end