class User < ApplicationRecord

  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_integrity_of :avatar
  validates_processing_of :avatar

  validates :username, format: { without: /\s/, message: "must contain no spaces" }

  has_many :posts
end
