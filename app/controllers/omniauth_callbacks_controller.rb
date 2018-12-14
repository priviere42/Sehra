class OmniauthCallbacksController < ApplicationController

	def facebook
	 @user = User.find_for_facebook_oauth(request.env["omniauth.auth"])
		if @user.persisted?
		 flash[:notice] = "Tu t'es bien connecté via Facebook"
		 sign_in_and_redirect @user, :event => :authentification
		else
		 redirect_to new_user_registration_url
		end
	end

end
