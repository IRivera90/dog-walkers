class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :editable

  def editable
    scope == object.user
  end
  belongs_to :user
end
