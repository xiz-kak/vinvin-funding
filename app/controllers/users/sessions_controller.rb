class Users::SessionsController < Devise::SessionsController
  def new
    flash[:danger] = t 'devise.failure.unauthenticated'
    return redirect_to :back
  end

  def create
    super
  end

  def destroy
    super
    flash.delete(:notice)
    flash[:success] = I18n.t 'devise.sessions.signed_out'
  end
end
