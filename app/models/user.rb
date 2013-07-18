class User < ActiveRecord::Base
  #We aren't using protected attributes in Rails 4
  # attr_accessible :username, :image, :remote_image_url, :password, :password_confirmation

  has_secure_password

  mount_uploader :image, AvatarUploader

end
