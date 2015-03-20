class Comment < ActiveRecord::Base
  belongs_to :acticle
  belongs_to :user
  has_many :responses, :class_name => "Comment", :foreign_key => "parent_id"
  validates :content, presence: true

  def has_parent?
  	if parent_id.nil?
  		false
  	else
  		true
  	end
  end
end
