class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  devise_group :member, contains: [:coach, :user]

  private

  def pundit_user
      # Make Pundit to use whichever Devise model [Coach, User] as the 'current_user'
      # Just by using the offered helper method from Devise, 'devise_group' feature
      current_member
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
