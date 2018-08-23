class User < ApplicationRecord
<<<<<<< HEAD
=======
  mount_uploader :avatar, AvatarUploader
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
=======

  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar
 
  private
    def avatar_size_validation
      errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    end
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
end
