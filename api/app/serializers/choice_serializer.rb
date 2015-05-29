class ChoiceSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :image_url
  has_one :question
end
