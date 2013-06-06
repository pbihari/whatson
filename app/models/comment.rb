class Comment < Post
  
  attr_accessible :is_event_info

  belongs_to :user
  belongs_to :event
  belongs_to :predecessor_comment, :class_name => "Comment"
end