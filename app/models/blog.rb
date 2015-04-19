class Blog < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
end
