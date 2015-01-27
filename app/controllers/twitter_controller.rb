class TwitterController < ApplicationController
	def auth
		# render json: "real_response"
		redirect_to_twitter
	end

	def callback
		unless params[:denied]
			request_token = session[:twitter_request_token]
			request_secret = session[:twitter_request_secret]
			if request_token && request_secret
				client = TwitterOAuth::Client.new(
					:consumer_key => TWITTER_CONSUMER_KEY,
					:consumer_secret => TWITTER_CONSUMER_SECRET
				)

				@access_token = client.authorize(
					request_token,
					request_secret,
					:oauth_verifier => params[:oauth_verifier]
				)

			end
		end
		# render json: client.user[0]
		twitter_response_name = client.user[0]["user"]["name"]
		calculated_name = twitter_response_name.split(' ').first
		calculated_surname = twitter_response_name.split(' ').last
		redirect_to login_path(:provider => "twitter", :uid => client.user[0]["user"]["id_str"], :name => calculated_name, :surname => calculated_surname, :image => client.user[0]["user"]["profile_image_url"])
	end

	private
		def redirect_to_twitter
			client = TwitterOAuth::Client.new(
					:consumer_key => TWITTER_CONSUMER_KEY,
					:consumer_secret => TWITTER_CONSUMER_SECRET
			)
			cb_url = url_for(:action => 'callback', :controller => 'twitter')
			request_token = client.request_token(:oauth_callback => cb_url)
			session[:twitter_request_token] = request_token.token
			session[:twitter_request_secret] = request_token.secret
			redirect_to request_token.authorize_url
		end
end
