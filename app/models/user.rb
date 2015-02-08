class User < ActiveRecord::Base
	def full_name
		name+" "+surname
	end
end
