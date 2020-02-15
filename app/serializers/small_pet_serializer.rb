class SmallPetSerializer < ActiveModel::Serializer
  attributes :id, :name, :animal, :editable

  def editable
    scope == object.user
  end
  belongs_to :user
end
