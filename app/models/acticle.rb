class Acticle < ActiveRecord::Base
	has_attached_file :image, :styles => { :thumb => "500x400#"}
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
