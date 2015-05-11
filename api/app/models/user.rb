class User < ActiveRecord::Base
  has_many :votes
  has_many :decisions

  validates_uniquenss_of :user_name
end
