class DashboardController < ApplicationController
  before_action :require_login

  def index
    @widgets = policy_scope(DashboardWidget)
  end

end
