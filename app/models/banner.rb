class Banner < ActiveRecord::Base
	has_attached_file :banner_file, :styles => { :thumb => "160x600>"}
  	validates_attachment_content_type :banner_file, :content_type => /\Aimage\/.*\Z/
end
