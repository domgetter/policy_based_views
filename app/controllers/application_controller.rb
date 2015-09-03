class ApplicationController < ActionController::Base
  include Clearance::Controller
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def path_for_entity_classification
    "app/views/#{entity_classification_folder}"
  end

  def entity_classification_folder
    current_user.entity.classification
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
