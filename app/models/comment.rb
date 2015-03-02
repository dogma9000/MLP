class Comment < ActiveRecord::Base
  belongs_to :acticle
  belongs_to :user
  belongs_to :comment
end
