class User < ActiveRecord::Base
include Clearance::User

  belongs_to :entity

  def enterprise?
    entity.classification == 'enterprise'
  end
end
