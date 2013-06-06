class Photo < ActiveRecord::Base
  attr_accessible :caption, :image

  belongs_to :visuals, :polymorphic => true

end
