class User < ApplicationRecord
  mount_uploader :img_profile, ImageUploader
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
