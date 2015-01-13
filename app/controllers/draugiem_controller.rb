class DraugiemController < ApplicationController
require "net/http"
	require "uri"

	def auth
		redirect_to get_draugiem_login_uri
	end

	def callback
		status = params[:dr_auth_status]
		if status == 'ok'
			code = params[:dr_auth_code]
			params = { :action => 'authorize', 'app' => DRAUGIEM_APP_KEY, 'code' => code}
			response = get_draugiem_login_params params
			real_response = JSON.parse(response)
			userJson = real_response["users"][real_response["uid"]]
			redirect_to login_path(:provider => "draugiem", :uid => real_response["uid"], :name => userJson["name"], :surname => userJson["surname"], :image => userJson["img"])
		else
			redirect_to root_path
		end
	end

	private
		def get_draugiem_login_uri
			redirect = "http://localhost:3000/"+url_for(draugiem_callback_path)
			hash = Digest::MD5.hexdigest(DRAUGIEM_APP_KEY + redirect)
			"#{DRAUGIEM_API_AUTHORIZE_PATH}?app=#{DRAUGIEM_APP_ID}&hash=#{hash}&redirect=#{redirect}"
		end

		def get_draugiem_login_params params
			response = request_curl(DRAUGIEM_API_PATH, params)
		end

		def request_curl url, params = { }
			uri = URI.parse("#{url}?#{params.to_query}")
			http = Net::HTTP.new(uri.host, uri.port)
			res = http.get(uri.request_uri)
			res.body
		end
end
