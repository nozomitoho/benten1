class Tweet < ApplicationRecord

    mount_uploader :image, ImageUploader
    mount_uploader :video, VideoUploader

    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    has_many :comments, dependent: :destroy
    
    belongs_to :user

end
