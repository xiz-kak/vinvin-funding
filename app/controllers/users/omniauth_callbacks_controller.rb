class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # def facebook
  #   if request.env["omniauth.auth"].info.email.blank?
  #     redirect_to "/users/auth/facebook?auth_type=rerequest&scope=email"
  #   end

  #   @user = User.find_for_facebook_oauth(request.env["omniauth.auth"])

  #   if @user.persisted?
  #     flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
  #     sign_in_and_redirect @user, :event => :authentication
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"]
  #     redirect_to new_user_registration_url
  #   end
  # end

  # def twitter
  #   @user = User.find_for_twitter_oauth(request.env["omniauth.auth"])

  #   if @user.persisted?
  #     flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Twitter"
  #     sign_in_and_redirect @user, :event => :authentication
  #   else
  #     session["devise.twitter_data"] = request.env["omniauth.auth"]
  #     redirect_to new_user_registration_url
  #   end
  # end
  require 'o_auth/o_auth_service'

  # Common method for all providers
  def callback_for_all_providers
    unless env["omniauth.auth"].present?
      flash[:danger] = "Authentication data was not provided"
      redirect_to root_url and return
    end
    provider = __callee__.to_s
    user = OAuthService::GetOAuthUser.call(env["omniauth.auth"])
    if user.persisted? # && user.email_verified?
      sign_in_and_redirect user, event: :authentication
      flash[:success] = I18n.t "devise.omniauth_callbacks.success", kind: provider.capitalize
    else
      session["devise.auth_data"] = request.env["omniauth.auth"]
      flash[:danger] = "Authentication failed"
      redirect_to root_path
      # user.reset_confirmation!
      # flash[:warning] = "We need your email address before proceeding."
      # redirect_to finish_signup_path(user)
    end
  end
  alias_method :facebook, :callback_for_all_providers
  alias_method :twitter,  :callback_for_all_providers

  def failure
    redirect_to root_path
  end
end
