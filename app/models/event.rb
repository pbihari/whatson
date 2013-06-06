class Event < ActiveRecord::Base
  attr_accessible :city, :click_count, :description, :finish, :postcode, :start, :title, :venue, :website

  has_many :likes
  has_many :users, :through => :likes

  belongs_to :owner, :class_name => "User"
  
  has_many :photos
  belongs_to :event_photo, :class_name => "Photo"

  has_many :comments

  has_many :categories, :through => :taggings
end
