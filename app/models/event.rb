class Event < ActiveRecord::Base
  attr_accessible :city, :click_count, :description, :finish, :postcode, :start, :title, :venue, :website
end
