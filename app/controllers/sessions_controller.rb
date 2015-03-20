class SessionsController < ApplicationController
 def login_or_create
  	user = User.find_by_provider_and_uid(params[:provider], params[:uid])
    if user.nil?
      user = User.create(:provider => params[:provider], :uid => params[:uid], :name => params[:name], :surname => params[:surname], :pic_url => params[:image])
    end
    if user.access
      sign_in_this_user user
      redirect_to root_path
    else 
      redirect_to general_deny_access_path
    end
  	
  end

  def logout
  	sign_out_current_user
  	redirect_to root_path
  end
end
