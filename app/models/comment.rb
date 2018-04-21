class Comment < ApplicationRecord
    belongs_to :idea
    belongs_to :user
    validates_presence_of :user_name, :body
    mount_uploader :picture, PictureUploader
end
