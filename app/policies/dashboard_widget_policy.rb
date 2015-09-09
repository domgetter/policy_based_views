class DashboardWidgetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      widgets = DashboardWidget.all
      unless user.enterprise?
        widgets.select! { |x| x.name == 'list_books' }
      end
      widgets
    end
  end
end
