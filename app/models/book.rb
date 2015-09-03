class Book < ActiveRecord::Base
  belongs_to :genre

  scope :smb, -> { where(genre: Genre.smb) }
end
