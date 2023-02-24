class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :cuisine, :instruction, :image, :video

  has_many :ingredients
end
