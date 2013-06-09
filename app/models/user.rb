class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :username 

  has_secure_password

  before_save :create_remember_token
  before_save { |user| user.email = email.downcase }

  validates :username, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  has_many :comments
  has_many :likes
  has_many :events, :through => :likes

  has_many :event_posts, :class_name => "Event", :foreign_key => "owner"
  
  has_many :photos
  belongs_to :profile_photo, :class_name => "Photo"

  has_many :interests
  has_many :categories, :through => :interests

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
 