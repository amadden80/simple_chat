class User < ActiveRecord::Base
  attr_accessible :username, :image, :remote_image_url, :password, :password_confirmation

  has_secure_password

  mount_uploader :image, AvatarUploader

end
