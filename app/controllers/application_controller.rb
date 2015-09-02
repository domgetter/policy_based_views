class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def path_for_environment
    "app/views/#{environment_folder}"
  end

  def environment_folder
    # This would actually be an environment variable, but for
    # demo purposes we're using a param here.
    params[:application_type].downcase if params[:application_type].present?
  end
end
