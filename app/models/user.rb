class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :username

  has_many :comments
  has_many :likes
  has_many :events, :through => :likes

  has_many :event_posts, :class_name => "Event", :foreign_key => "owner"
  
  has_many :photos
  belongs_to :profile_photo, :class_name => "Photo"

  has_many :categories, :through => :interests
end
