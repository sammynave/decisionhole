class Choice < ActiveRecord::Base
  belongs_to :decision
  has_many :votes

  validates :image_url, presence: true
end
