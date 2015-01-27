class LoginController < ApplicationController
  def auth
		render text: "real_response"
		# redirect_to_twitter
	end

	def callback
		# if params[:denied]
		# 	flash[:notice] = "Diemžēl ar twitter pieslēgties neizdevās"
		# else
		# 	request_token = session[:twitter_request_token]
		# 	request_secret = session[:twitter_request_secret]
		# 	if request_token && request_secret
		# 		client = TwitterOAuth::Client.new(
		# 			:consumer_key => TWITTER_CONSUMER_KEY,
		# 			:consumer_secret => TWITTER_CONSUMER_SECRET
		# 		)

		# 		@access_token = client.authorize(
		# 			request_token,
		# 			request_secret,
		# 			:oauth_verifier => params[:oauth_verifier]
		# 		)

		# 	end
		# end
		# render json: real_response
		# redirect_to login_path(:provider => "twitter", :uid => real_response["uid"], :name => userJson["name"], :surname => userJson["surname"], :image => userJson["img"])
		# redirect_to login_path(:provider => "twitter", :uid => client.user[0]["user"]["id_str"], :name => client.user[0]["user"]["name"], :surname => "", :email => "", :image => client.user[0]["user"]["profile_image_url"])
	end

	private
		# def redirect_to_twitter
		# 	client = TwitterOAuth::Client.new(
		# 			:consumer_key => TWITTER_CONSUMER_KEY,
		# 			:consumer_secret => TWITTER_CONSUMER_SECRET
		# 	)
		# 	cb_url = url_for(:action => 'callback', :controller => 'twitter')
		# 	request_token = client.request_token(:oauth_callback => cb_url)
		# 	session[:twitter_request_token] = request_token.token
		# 	session[:twitter_request_secret] = request_token.secret
		# 	redirect_to request_token.authorize_url
		# end
end
