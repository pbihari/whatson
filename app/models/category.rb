class Category < ActiveRecord::Base
  attr_accessible :name

  belongs_to :parent, :class_name => "Category"
  has_many :subcategories, :class_name => "Category",
  			:foreign_key => "parent_id"

  has_many :events, :through => :taggings
  
  has_many :users, :through => :interests
end
