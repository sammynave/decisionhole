class Choice < ActiveRecord::Base
  belongs_to :question, class_name: "Question"
end
