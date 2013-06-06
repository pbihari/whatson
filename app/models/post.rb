class Post < ActiveRecord::Base
  attr_accessible :content, :is_locked, :title, :type
end


