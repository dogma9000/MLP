class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sign_in_this_user(user)
	    current_user = user
	    session[:current_user] = user.id
	end
  	def sign_out_current_user
        session[:current_user] = nil
        current_user = nil
    end
    def current_user
        @current_user ||= user_from_session
    end
    def user_from_session
        if !session[:current_user].nil?
            User.find(session[:current_user])
        end
    end
    def banner_setter
      @banner=Banner.last
    end
end
