class BrewSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe, :steps, :notes
end
