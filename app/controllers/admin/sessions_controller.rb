class Admin::SessionsController < Devise::SessionsController
  before_action :require_no_authentication, except: %i(new create destroy)
  layout 'admin/application'
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  # end

  # POST /resource/sign_in
#  def create
#  end

  # DELETE /resource/sign_out
#  def destroy
#    #super
#  end


  # You can put the params you want to permit in the empty array.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end

  def after_sign_in_path_for(_resource)
    admin_root_path
  end

  def after_sign_out_path_for(_resource)
    admin_root_path
  end
end
