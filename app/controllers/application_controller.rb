class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to root_path, :alert => exception.message
  end
  

  #override the default behaviour of afer sign in path
  # def after_sign_in_path_for(resource)
  #   current_user_path
  # end

  #or keep on the same page after signing out
  # def after_sign_out_path_for(resource_or_scope)
  #   request.referrer
  # end

end
