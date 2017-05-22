class ApplicationController < ActionController::Base

  # Prevnet CSRF attacks by raising an exception.

  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  def admin_required
    if !current_user.admin?
      redirect_to "/", alert: "You are not admin."
    end
  end
end
