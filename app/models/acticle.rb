class Acticle < ActiveRecord::Base
	has_attached_file :image, :styles => { :thumb => "500x400#"}
	
	validates :user_id, :presence => true
	validates :text, :presence => true

	belongs_to :user
	has_many :comments

  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
