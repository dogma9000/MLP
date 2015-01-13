module ApplicationHelper
	def user_from_session
        if !session[:current_user].nil?
                User.find(session[:current_user])
        end
    end

    def current_user
        @current_user ||= user_from_session
    end
      
    def current_user?(user)
        user == current_user
    end

    def current_user_exists
    	!current_user.nil?
    end
end
