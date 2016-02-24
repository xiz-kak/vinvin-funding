class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale, :set_current_user

  # override- set locale to all url
  def default_url_options(options = {})
    {locale: I18n.locale == I18n.default_locale ? nil : I18n.locale}.merge options
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_current_user
    User.current_user = current_user
  end
end
