class Comment < ApplicationRecord
    belongs_to :idea
    belongs_to :user
    validates_presence_of :body
    mount_uploader :picture, PictureUploader
end
