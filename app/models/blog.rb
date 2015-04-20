class Blog < ActiveRecord::Base
	has_many :articles, dependent: :destroy
	mount_uploader :attachment, AttachmentUploader
end
