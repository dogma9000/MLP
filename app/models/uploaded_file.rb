class UploadedFile < ActiveRecord::Base
  belongs_to :type
  belongs_to :user
  has_attached_file :file
  do_not_validate_attachment_file_type :file
end
