class ApplicationController < ActionController::Base
  include Clearance::Controller
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def current_user
    UserDecorator.decorate(super) unless super.nil?
  end

  private

  def current_entity
    current_user.entity
  end
  helper_method :current_entity

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
