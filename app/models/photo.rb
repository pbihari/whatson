class Photo < ActiveRecord::Base
  attr_accessible :caption, :image

  belongs_to :user
  belongs_to :event

end
