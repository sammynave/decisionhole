class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :choices
end
