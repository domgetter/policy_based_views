class Genre < ActiveRecord::Base
  scope :smb, -> { where(name: 'Business') }
end
