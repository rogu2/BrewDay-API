class BrewSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe, :steps, :notes
  belongs_to :user
end
