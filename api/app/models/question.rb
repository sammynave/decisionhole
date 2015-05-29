class Question < ActiveRecord::Base
  has_many :choices, class_name: "Choice", foreign_key: :question_id
end
