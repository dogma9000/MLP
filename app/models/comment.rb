class Comment < ActiveRecord::Base
  belongs_to :acticle
  belongs_to :user
  has_many :responses, :class_name => "Comment", :foreign_key => "parent_id"
end
