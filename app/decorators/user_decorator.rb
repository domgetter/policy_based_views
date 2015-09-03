class UserDecorator < Draper::Decorator
  delegate_all

  def navigation
    if enterprise?
      h.render 'common/menu'
    else
      h.render 'smb/common/menu'
    end
  end
end
