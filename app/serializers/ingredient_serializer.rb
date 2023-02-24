class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :aisle
end
