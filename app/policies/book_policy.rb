class BookPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.enterprise?
        scope.all
      else
        scope.smb
      end
    end
  end
end
