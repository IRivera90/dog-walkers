class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed
  belongs_to :user
end
