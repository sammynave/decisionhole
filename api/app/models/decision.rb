class Decision < ActiveRecord::Base
  has_one :choice_a, class_name: "Choice", foreign_key: "choice_a_id"
  has_one :choice_b, class_name: "Choice", foreign_key: "choice_b_id"
  belongs_to :user

  validates :user, presence: true
  validates :choice_a, presence: true
  validates :choice_b, presence: true
end
