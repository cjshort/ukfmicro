class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_admin!
	prepend_before_filter :require_no_authentication, only: [ :cancel ]

  protected

  def sign_up(resource_name, resource)
  end

  private
 
  def sign_up_params
    params.require(:branch).permit(:branch, :email, :password, :password_confirmation, website_attributes: [:subdomain, :branch_id])
  end
 
  def account_update_params
    params.require(:branch).permit(:branch, :email, :password, :password_confirmation, :current_password)
  end
end
