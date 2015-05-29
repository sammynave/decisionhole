class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url

  has_one :question
end
