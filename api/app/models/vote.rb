class Vote < ActiveRecord::Base
  belongs_to :choice
  belongs_to :user

  validates :choice, presence: true
  validates :user, presence: true
end
