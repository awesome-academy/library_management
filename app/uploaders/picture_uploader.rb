class PictureUploader < CarrierWave::Uploader::Base
  def filename
    "#{secure_token(10)}.#{file.extension}" if original_filename.present?
  end
  storage :file

  def store_dir
    "image/book"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  protected
  def secure_token length = 16
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var,
      SecureRandom.hex(length / 2))
  end
end
