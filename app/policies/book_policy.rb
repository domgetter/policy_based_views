class BookPolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    user.enterprise?
  end

  def new?
    create?
  end

  def update?
    user.enterprise?
  end

  def edit?
    update?
  end

  def destroy?
    user.enterprise?
  end

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
